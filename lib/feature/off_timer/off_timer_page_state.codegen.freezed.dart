// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'off_timer_page_state.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OffTimerState {
  OffTimerType get offTimerType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffTimerStateCopyWith<OffTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffTimerStateCopyWith<$Res> {
  factory $OffTimerStateCopyWith(
          OffTimerState value, $Res Function(OffTimerState) then) =
      _$OffTimerStateCopyWithImpl<$Res>;
  $Res call({OffTimerType offTimerType});
}

/// @nodoc
class _$OffTimerStateCopyWithImpl<$Res>
    implements $OffTimerStateCopyWith<$Res> {
  _$OffTimerStateCopyWithImpl(this._value, this._then);

  final OffTimerState _value;
  // ignore: unused_field
  final $Res Function(OffTimerState) _then;

  @override
  $Res call({
    Object? offTimerType = freezed,
  }) {
    return _then(_value.copyWith(
      offTimerType: offTimerType == freezed
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
    ));
  }
}

/// @nodoc
abstract class _$$_OffTimerStateCopyWith<$Res>
    implements $OffTimerStateCopyWith<$Res> {
  factory _$$_OffTimerStateCopyWith(
          _$_OffTimerState value, $Res Function(_$_OffTimerState) then) =
      __$$_OffTimerStateCopyWithImpl<$Res>;
  @override
  $Res call({OffTimerType offTimerType});
}

/// @nodoc
class __$$_OffTimerStateCopyWithImpl<$Res>
    extends _$OffTimerStateCopyWithImpl<$Res>
    implements _$$_OffTimerStateCopyWith<$Res> {
  __$$_OffTimerStateCopyWithImpl(
      _$_OffTimerState _value, $Res Function(_$_OffTimerState) _then)
      : super(_value, (v) => _then(v as _$_OffTimerState));

  @override
  _$_OffTimerState get _value => super._value as _$_OffTimerState;

  @override
  $Res call({
    Object? offTimerType = freezed,
  }) {
    return _then(_$_OffTimerState(
      offTimerType: offTimerType == freezed
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
    ));
  }
}

/// @nodoc

class _$_OffTimerState extends _OffTimerState {
  _$_OffTimerState({required this.offTimerType}) : super._();

  @override
  final OffTimerType offTimerType;

  @override
  String toString() {
    return 'OffTimerState(offTimerType: $offTimerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OffTimerState &&
            const DeepCollectionEquality()
                .equals(other.offTimerType, offTimerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(offTimerType));

  @JsonKey(ignore: true)
  @override
  _$$_OffTimerStateCopyWith<_$_OffTimerState> get copyWith =>
      __$$_OffTimerStateCopyWithImpl<_$_OffTimerState>(this, _$identity);
}

abstract class _OffTimerState extends OffTimerState {
  factory _OffTimerState({required final OffTimerType offTimerType}) =
      _$_OffTimerState;
  _OffTimerState._() : super._();

  @override
  OffTimerType get offTimerType;
  @override
  @JsonKey(ignore: true)
  _$$_OffTimerStateCopyWith<_$_OffTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
