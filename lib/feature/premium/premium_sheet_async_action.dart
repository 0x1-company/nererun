import 'package:nererun/service/purchase.dart';
import 'package:riverpod/riverpod.dart';

final premiumSheetAsyncActionProvider = Provider(
  (ref) => PremiumSheetAsyncAction(),
);

class PremiumSheetAsyncAction {
  Future<void> purchase() async {}

  Future<bool> restore() async => callRestorePurchaseInfo();
}
