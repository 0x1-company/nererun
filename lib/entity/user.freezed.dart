// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;
  OffTimerType get offTimerType => throw _privateConstructorUsedError;
  Package? get packageInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool isAnonymous,
      OffTimerType offTimerType,
      Package? packageInfo});

  $PackageCopyWith<$Res>? get packageInfo;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isAnonymous = freezed,
    Object? offTimerType = freezed,
    Object? packageInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      offTimerType: offTimerType == freezed
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
      packageInfo: packageInfo == freezed
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as Package?,
    ));
  }

  @override
  $PackageCopyWith<$Res>? get packageInfo {
    if (_value.packageInfo == null) {
      return null;
    }

    return $PackageCopyWith<$Res>(_value.packageInfo!, (value) {
      return _then(_value.copyWith(packageInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool isAnonymous,
      OffTimerType offTimerType,
      Package? packageInfo});

  @override
  $PackageCopyWith<$Res>? get packageInfo;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? isAnonymous = freezed,
    Object? offTimerType = freezed,
    Object? packageInfo = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      offTimerType: offTimerType == freezed
          ? _value.offTimerType
          : offTimerType // ignore: cast_nullable_to_non_nullable
              as OffTimerType,
      packageInfo: packageInfo == freezed
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as Package?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {this.id = '',
      this.isAnonymous = true,
      this.offTimerType = OffTimerType.off,
      this.packageInfo});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final bool isAnonymous;
  @override
  @JsonKey()
  final OffTimerType offTimerType;
  @override
  final Package? packageInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, isAnonymous: $isAnonymous, offTimerType: $offTimerType, packageInfo: $packageInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isAnonymous', isAnonymous))
      ..add(DiagnosticsProperty('offTimerType', offTimerType))
      ..add(DiagnosticsProperty('packageInfo', packageInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.isAnonymous, isAnonymous) &&
            const DeepCollectionEquality()
                .equals(other.offTimerType, offTimerType) &&
            const DeepCollectionEquality()
                .equals(other.packageInfo, packageInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isAnonymous),
      const DeepCollectionEquality().hash(offTimerType),
      const DeepCollectionEquality().hash(packageInfo));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String id,
      final bool isAnonymous,
      final OffTimerType offTimerType,
      final Package? packageInfo}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  bool get isAnonymous;
  @override
  OffTimerType get offTimerType;
  @override
  Package? get packageInfo;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
