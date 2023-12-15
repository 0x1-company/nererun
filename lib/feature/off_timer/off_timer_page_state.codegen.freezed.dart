// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$OffTimerStateCopyWithImpl<$Res, OffTimerState>;
  @useResult
  $Res call({OffTimerType offTimerType});
}

/// @nodoc
class _$OffTimerStateCopyWithImpl<$Res, $Val extends OffTimerState>
    implements $OffTimerStateCopyWith<$Res> {
  _$OffTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offTimerType = null,
  }) {
    return _then(_value.copyWith(
      offTimerType: null == offTimerType
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffTimerStateImplCopyWith<$Res>
    implements $OffTimerStateCopyWith<$Res> {
  factory _$$OffTimerStateImplCopyWith(
          _$OffTimerStateImpl value, $Res Function(_$OffTimerStateImpl) then) =
      __$$OffTimerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OffTimerType offTimerType});
}

/// @nodoc
class __$$OffTimerStateImplCopyWithImpl<$Res>
    extends _$OffTimerStateCopyWithImpl<$Res, _$OffTimerStateImpl>
    implements _$$OffTimerStateImplCopyWith<$Res> {
  __$$OffTimerStateImplCopyWithImpl(
      _$OffTimerStateImpl _value, $Res Function(_$OffTimerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offTimerType = null,
  }) {
    return _then(_$OffTimerStateImpl(
      offTimerType: null == offTimerType
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
    ));
  }
}

/// @nodoc

class _$OffTimerStateImpl extends _OffTimerState {
  _$OffTimerStateImpl({required this.offTimerType}) : super._();

  @override
  final OffTimerType offTimerType;

  @override
  String toString() {
    return 'OffTimerState(offTimerType: $offTimerType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffTimerStateImpl &&
            (identical(other.offTimerType, offTimerType) ||
                other.offTimerType == offTimerType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offTimerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffTimerStateImplCopyWith<_$OffTimerStateImpl> get copyWith =>
      __$$OffTimerStateImplCopyWithImpl<_$OffTimerStateImpl>(this, _$identity);
}

abstract class _OffTimerState extends OffTimerState {
  factory _OffTimerState({required final OffTimerType offTimerType}) =
      _$OffTimerStateImpl;
  _OffTimerState._() : super._();

  @override
  OffTimerType get offTimerType;
  @override
  @JsonKey(ignore: true)
  _$$OffTimerStateImplCopyWith<_$OffTimerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
