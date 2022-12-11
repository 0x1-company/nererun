import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:nererun/database/database.dart';
import 'package:nererun/datastore/user.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

const premiumEntitlements = "Premium";

Future<void> initialzePurchase(String uid) async {
  await Purchases.setDebugLogsEnabled(true);
  await Purchases.setup('apiKey', appUserId: uid);
  Purchases.addPurchaserInfoUpdateListener(_callUpdatePurchaseInfo);

  await _syncPurchaseInfo();
}

Future<bool> callRestorePurchaseInfo() async {
  try {
    final info = await Purchases.restoreTransactions();
    final entitlements = info.entitlements.all[premiumEntitlements];

    if (entitlements != null && entitlements.isActive) {
      await _callUpdatePurchaseInfo(info);
      return Future.value(true);
    }
    throw Exception('以前の購入情報が見つかりません。アカウントをお確かめの上再度お試しください');
  } on PlatformException catch (exception, stack) {
    print(exception);
    print(stack);
    rethrow;
  } catch (exception, stack) {
    print(exception);
    print(stack);
    rethrow;
  }
}

Future<void> _callUpdatePurchaseInfo(PurchaserInfo info) async {
  final uid = FirebaseAuth.instance.currentUser?.uid;
  if (uid == null) return;

  final userDatastore = UserDatastore(DatabaseConnection(uid));
  final premiumEntitlement = info.entitlements.all[premiumEntitlements];
  try {
    await userDatastore.updatePurchaseInfo(
      isActivated: premiumEntitlement?.isActive,
      entitlementIdentifier: premiumEntitlement?.identifier,
      premiumPlanIdentifier: premiumEntitlement?.productIdentifier,
      purchaseAppID: info.originalAppUserId,
      activeSubscriptions: info.activeSubscriptions,
      originalPurchaseDate: info.originalPurchaseDate,
    );
  } catch (exception, stack) {
    print(exception);
    print(stack);
  }
}

Future<void> _syncPurchaseInfo() async {
  final uid = FirebaseAuth.instance.currentUser?.uid;
  if (uid == null) return;

  final purchaseInfo = await Purchases.getPurchaserInfo();
  final premiumEntitlement = purchaseInfo.entitlements.all[premiumEntitlements];
  final isActivated =
      premiumEntitlement == null ? false : premiumEntitlement.isActive;

  try {
    final userDatastore = UserDatastore(DatabaseConnection(uid));
    await userDatastore.syncPurchaseInfo(isActivated: isActivated);
  } catch (exception, stack) {
    print(exception);
    print(stack);
    return;
  }
}
