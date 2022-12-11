import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nererun/entity/user.dart';
import 'package:nererun/provider/user.dart';
import 'package:riverpod/riverpod.dart';

part 'premium_state.codegen.freezed.dart';

@freezed
class PremiumState with _$PremiumState {
  factory PremiumState({
    required User user,
  }) = _PremiumState;
  PremiumState._();
}

final premiumSheetStateProvider = Provider<AsyncValue<PremiumState>>((ref) {
  final user = ref.watch(userStreamProvider).value;

  if (user == null) {
    return const AsyncLoading();
  }

  try {
    return AsyncValue.data(PremiumState(
      user: user,
    ));
  } catch (error, stackTrace) {
    return AsyncValue.error(error, stackTrace);
  }
});
