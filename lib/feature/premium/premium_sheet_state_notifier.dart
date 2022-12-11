import 'package:nererun/feature/premium/premium_sheet_async_action.dart';
import 'package:nererun/feature/premium/premium_state.codegen.dart';
import 'package:riverpod/riverpod.dart';

final premiumSheetStateNotifierProvider =
    StateNotifierProvider<PremiumSheetStateNotifier, AsyncValue<PremiumState>>(
  (ref) => PremiumSheetStateNotifier(
    asyncAction: ref.watch(premiumSheetAsyncActionProvider),
    initialState: ref.watch(premiumSheetStateProvider),
  ),
);

class PremiumSheetStateNotifier
    extends StateNotifier<AsyncValue<PremiumState>> {
  final PremiumSheetAsyncAction asyncAction;

  PremiumSheetStateNotifier({
    required this.asyncAction,
    required AsyncValue<PremiumState> initialState,
  }) : super(initialState);
}
