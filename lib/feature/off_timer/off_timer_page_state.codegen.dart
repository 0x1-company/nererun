import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nererun/entity/off_timer_type.dart';
import 'package:nererun/feature/off_timer/off_timer_page_current_type_state.dart';
import 'package:riverpod/riverpod.dart';

part 'off_timer_page_state.codegen.freezed.dart';

@freezed
class OffTimerState with _$OffTimerState {
  factory OffTimerState({
    required OffTimerType offTimerType,
  }) = _OffTimerState;
  OffTimerState._();
}

final offTimerStateProvider = Provider<AsyncValue<OffTimerState>>((ref) {
  final offTimerType = ref.watch(offTimerCurrentTypeStateNotifierProvider);

  try {
    return AsyncValue.data(OffTimerState(
      offTimerType: offTimerType,
    ));
  } catch (error, stackTrace) {
    return AsyncValue.error(error, stackTrace);
  }
});
