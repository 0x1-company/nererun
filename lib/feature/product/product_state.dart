import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nererun/entity/off_timer_type.dart';

part 'product_state.freezed.dart';

@freezed
abstract class ProductState implements _$ProductState {
  ProductState._();

  factory ProductState({
    Duration? duration,
    @Default(Duration.zero) Duration currentPosition,
    @Default(OffTimerType.off) OffTimerType offTimerType,
    required DateTime startDateTime,
    DateTime? offDateTime,
  }) = _ProductState;
}
