// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'premium_state.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PremiumState {
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PremiumStateCopyWith<PremiumState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PremiumStateCopyWith<$Res> {
  factory $PremiumStateCopyWith(
          PremiumState value, $Res Function(PremiumState) then) =
      _$PremiumStateCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$PremiumStateCopyWithImpl<$Res> implements $PremiumStateCopyWith<$Res> {
  _$PremiumStateCopyWithImpl(this._value, this._then);

  final PremiumState _value;
  // ignore: unused_field
  final $Res Function(PremiumState) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_PremiumStateCopyWith<$Res>
    implements $PremiumStateCopyWith<$Res> {
  factory _$$_PremiumStateCopyWith(
          _$_PremiumState value, $Res Function(_$_PremiumState) then) =
      __$$_PremiumStateCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_PremiumStateCopyWithImpl<$Res>
    extends _$PremiumStateCopyWithImpl<$Res>
    implements _$$_PremiumStateCopyWith<$Res> {
  __$$_PremiumStateCopyWithImpl(
      _$_PremiumState _value, $Res Function(_$_PremiumState) _then)
      : super(_value, (v) => _then(v as _$_PremiumState));

  @override
  _$_PremiumState get _value => super._value as _$_PremiumState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_PremiumState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_PremiumState extends _PremiumState {
  _$_PremiumState({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'PremiumState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PremiumState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_PremiumStateCopyWith<_$_PremiumState> get copyWith =>
      __$$_PremiumStateCopyWithImpl<_$_PremiumState>(this, _$identity);
}

abstract class _PremiumState extends PremiumState {
  factory _PremiumState({required final User user}) = _$_PremiumState;
  _PremiumState._() : super._();

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_PremiumStateCopyWith<_$_PremiumState> get copyWith =>
      throw _privateConstructorUsedError;
}
