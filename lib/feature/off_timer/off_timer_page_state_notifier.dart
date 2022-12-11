import 'package:nererun/feature/off_timer/off_timer_page_async_action.dart';
import 'package:nererun/feature/off_timer/off_timer_page_state.codegen.dart';
import 'package:riverpod/riverpod.dart';

final offTimerStateNotifierProvider =
    StateNotifierProvider<OffTimerStateNotifier, AsyncValue<OffTimerState>>(
  (ref) => OffTimerStateNotifier(
    asyncAction: ref.read(offTimerAsyncActionProvider),
    initialState: ref.watch(offTimerStateProvider),
  ),
);

class OffTimerStateNotifier extends StateNotifier<AsyncValue<OffTimerState>> {
  final OffTimerAsyncAction asyncAction;

  OffTimerStateNotifier({
    required this.asyncAction,
    required AsyncValue<OffTimerState> initialState,
  }) : super(initialState);
}
