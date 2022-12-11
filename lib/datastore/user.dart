import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nererun/database/database.dart';
import 'package:nererun/entity/off_timer_type.dart';
import 'package:nererun/entity/package.dart';
import 'package:nererun/entity/user.dart';
import 'package:package_info/package_info.dart';
import 'package:riverpod/riverpod.dart';

final userDatastoreProvider = Provider(
  (ref) => UserDatastore(
    ref.watch(databaseProvider),
  ),
);

class UserDatastore {
  final DatabaseConnection _database;

  UserDatastore(this._database);

  Future<User> fetchOrCreate(String uid) async {
    return fetch().catchError((_) => _create(uid).then((_) => fetch()));
  }

  Future<User> fetch() async {
    print('call fetch for ${_database.userId}');
    final document = await _database.userReference().get();
    if (!document.exists) {
      print('user does not exists ${_database.userId}');
    }
    return User.fromJson(document.data() as Map<String, dynamic>);
  }

  Future<void> updateOffTimerType(OffTimerType offTimerType) async {
    return _database.userReference().set({
      UserFirestoreFieldKeys.offTimerType: offTimerType.rawPath,
    }, SetOptions(merge: true));
  }

  Future<void> syncPurchaseInfo({
    required bool isActivated,
  }) async {
    await _database.userReference().set({
      UserFirestoreFieldKeys.isPremium: isActivated,
    }, SetOptions(merge: true));
  }

  Future<void> updatePurchaseInfo({
    required bool? isActivated,
    required String? entitlementIdentifier,
    required String? premiumPlanIdentifier,
    required String purchaseAppID,
    required List<String> activeSubscriptions,
    required String? originalPurchaseDate,
  }) async {
    await _database.userReference().set({
      if (isActivated != null) UserFirestoreFieldKeys.isPremium: isActivated,
      UserFirestoreFieldKeys.purchaseAppID: purchaseAppID,
    }, SetOptions(merge: true));

    final privates = {
      if (premiumPlanIdentifier != null)
        UserPrivateFirestoreFieldKeys.latestPremiumPlanIdentifier:
            premiumPlanIdentifier,
      if (originalPurchaseDate != null)
        UserPrivateFirestoreFieldKeys.originalPurchaseDate:
            originalPurchaseDate,
      if (activeSubscriptions.isNotEmpty)
        UserPrivateFirestoreFieldKeys.activeSubscriptions: activeSubscriptions,
      if (entitlementIdentifier != null)
        UserPrivateFirestoreFieldKeys.entitlementIdentifier:
            entitlementIdentifier,
    };

    if (privates.isNotEmpty) {
      await _database
          .userPrivateReference()
          .set({...privates}, SetOptions(merge: true));
    }
  }

  Future<void> _create(String uid) async {
    print('_create : $uid');
    final packageInfo = await PackageInfo.fromPlatform();
    final package = Package(
      latestOS: Platform.operatingSystem,
      appName: packageInfo.appName,
      buildNumber: packageInfo.buildNumber,
      appVersion: packageInfo.version,
    );
    return _database.userReference().set({
      UserFirestoreFieldKeys.offTimerType: OffTimerType.off.rawPath,
      UserFirestoreFieldKeys.isAnonymous: true,
      UserFirestoreFieldKeys.packageInfo: package.toJson(),
    }, SetOptions(merge: true));
  }
}
