// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {Duration? duration,
      Duration currentPosition,
      OffTimerType offTimerType,
      DateTime startDateTime,
      DateTime? offDateTime});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? duration = freezed,
    Object? currentPosition = freezed,
    Object? offTimerType = freezed,
    Object? startDateTime = freezed,
    Object? offDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      offTimerType: offTimerType == freezed
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      offDateTime: offDateTime == freezed
          ? _value.offDateTime
          : offDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Duration? duration,
      Duration currentPosition,
      OffTimerType offTimerType,
      DateTime startDateTime,
      DateTime? offDateTime});
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, (v) => _then(v as _$_ProductState));

  @override
  _$_ProductState get _value => super._value as _$_ProductState;

  @override
  $Res call({
    Object? duration = freezed,
    Object? currentPosition = freezed,
    Object? offTimerType = freezed,
    Object? startDateTime = freezed,
    Object? offDateTime = freezed,
  }) {
    return _then(_$_ProductState(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      offTimerType: offTimerType == freezed
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      offDateTime: offDateTime == freezed
          ? _value.offDateTime
          : offDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ProductState extends _ProductState {
  _$_ProductState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.currentPosition, currentPosition) &&
            const DeepCollectionEquality()
                .equals(other.offTimerType, offTimerType) &&
            const DeepCollectionEquality()
                .equals(other.startDateTime, startDateTime) &&
            const DeepCollectionEquality()
                .equals(other.offDateTime, offDateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(currentPosition),
      const DeepCollectionEquality().hash(offTimerType),
      const DeepCollectionEquality().hash(startDateTime),
      const DeepCollectionEquality().hash(offDateTime));

  @JsonKey(ignore: true)
  @override
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState extends ProductState {
  factory _ProductState(
      {final Duration? duration,
      final Duration currentPosition,
      final OffTimerType offTimerType,
      required final DateTime startDateTime,
      final DateTime? offDateTime}) = _$_ProductState;
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
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
