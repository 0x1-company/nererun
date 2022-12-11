import 'package:nererun/entity/off_timer_type.dart';
import 'package:nererun/provider/user.dart';
import 'package:riverpod/riverpod.dart';

final offTimerCurrentTypeStateNotifierProvider =
    StateNotifierProvider<OffTimerCurrentTypeStateNotifier, OffTimerType>(
        (ref) {
  final user = ref.watch(userStreamProvider);

  return OffTimerCurrentTypeStateNotifier(
    user.value?.offTimerType ?? OffTimerType.off,
  );
});

class OffTimerCurrentTypeStateNotifier extends StateNotifier<OffTimerType> {
  OffTimerCurrentTypeStateNotifier(
    OffTimerType initialState,
  ) : super(initialState);

  void set(OffTimerType type) {
    if (state != type) {
      state = type;
    }
  }
}
