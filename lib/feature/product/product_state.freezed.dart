// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  Duration? get duration => throw _privateConstructorUsedError;
  Duration get currentPosition => throw _privateConstructorUsedError;
  OffTimerType get offTimerType => throw _privateConstructorUsedError;
  DateTime get startDateTime => throw _privateConstructorUsedError;
  DateTime? get offDateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {Duration? duration,
      Duration currentPosition,
      OffTimerType offTimerType,
      DateTime startDateTime,
      DateTime? offDateTime});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? currentPosition = null,
    Object? offTimerType = null,
    Object? startDateTime = null,
    Object? offDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      offTimerType: null == offTimerType
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      offDateTime: freezed == offDateTime
          ? _value.offDateTime
          : offDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration? duration,
      Duration currentPosition,
      OffTimerType offTimerType,
      DateTime startDateTime,
      DateTime? offDateTime});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? currentPosition = null,
    Object? offTimerType = null,
    Object? startDateTime = null,
    Object? offDateTime = freezed,
  }) {
    return _then(_$ProductStateImpl(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      offTimerType: null == offTimerType
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      offDateTime: freezed == offDateTime
          ? _value.offDateTime
          : offDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl extends _ProductState {
  _$ProductStateImpl(
      {this.duration,
      this.currentPosition = Duration.zero,
      this.offTimerType = OffTimerType.off,
      required this.startDateTime,
      this.offDateTime})
      : super._();

  @override
  final Duration? duration;
  @override
  @JsonKey()
  final Duration currentPosition;
  @override
  @JsonKey()
  final OffTimerType offTimerType;
  @override
  final DateTime startDateTime;
  @override
  final DateTime? offDateTime;

  @override
  String toString() {
    return 'ProductState(duration: $duration, currentPosition: $currentPosition, offTimerType: $offTimerType, startDateTime: $startDateTime, offDateTime: $offDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.offTimerType, offTimerType) ||
                other.offTimerType == offTimerType) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.offDateTime, offDateTime) ||
                other.offDateTime == offDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, currentPosition,
      offTimerType, startDateTime, offDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState extends ProductState {
  factory _ProductState(
      {final Duration? duration,
      final Duration currentPosition,
      final OffTimerType offTimerType,
      required final DateTime startDateTime,
      final DateTime? offDateTime}) = _$ProductStateImpl;
  _ProductState._() : super._();

  @override
  Duration? get duration;
  @override
  Duration get currentPosition;
  @override
  OffTimerType get offTimerType;
  @override
  DateTime get startDateTime;
  @override
  DateTime? get offDateTime;
  @override
  @JsonKey(ignore: true)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
