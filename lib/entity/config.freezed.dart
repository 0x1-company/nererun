// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return _Config.fromJson(json);
}

/// @nodoc
mixin _$Config {
  String get minimumSupportedAppVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigCopyWith<Config> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) then) =
      _$ConfigCopyWithImpl<$Res>;
  $Res call({String minimumSupportedAppVersion});
}

/// @nodoc
class _$ConfigCopyWithImpl<$Res> implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._value, this._then);

  final Config _value;
  // ignore: unused_field
  final $Res Function(Config) _then;

  @override
  $Res call({
    Object? minimumSupportedAppVersion = freezed,
  }) {
    return _then(_value.copyWith(
      minimumSupportedAppVersion: minimumSupportedAppVersion == freezed
          ? _value.minimumSupportedAppVersion
          : minimumSupportedAppVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ConfigCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$$_ConfigCopyWith(_$_Config value, $Res Function(_$_Config) then) =
      __$$_ConfigCopyWithImpl<$Res>;
  @override
  $Res call({String minimumSupportedAppVersion});
}

/// @nodoc
class __$$_ConfigCopyWithImpl<$Res> extends _$ConfigCopyWithImpl<$Res>
    implements _$$_ConfigCopyWith<$Res> {
  __$$_ConfigCopyWithImpl(_$_Config _value, $Res Function(_$_Config) _then)
      : super(_value, (v) => _then(v as _$_Config));

  @override
  _$_Config get _value => super._value as _$_Config;

  @override
  $Res call({
    Object? minimumSupportedAppVersion = freezed,
  }) {
    return _then(_$_Config(
      minimumSupportedAppVersion: minimumSupportedAppVersion == freezed
          ? _value.minimumSupportedAppVersion
          : minimumSupportedAppVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Config extends _Config {
  _$_Config({required this.minimumSupportedAppVersion}) : super._();

  factory _$_Config.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigFromJson(json);

  @override
  final String minimumSupportedAppVersion;

  @override
  String toString() {
    return 'Config(minimumSupportedAppVersion: $minimumSupportedAppVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Config &&
            const DeepCollectionEquality().equals(
                other.minimumSupportedAppVersion, minimumSupportedAppVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(minimumSupportedAppVersion));

  @JsonKey(ignore: true)
  @override
  _$$_ConfigCopyWith<_$_Config> get copyWith =>
      __$$_ConfigCopyWithImpl<_$_Config>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigToJson(
      this,
    );
  }
}

abstract class _Config extends Config {
  factory _Config({required final String minimumSupportedAppVersion}) =
      _$_Config;
  _Config._() : super._();

  factory _Config.fromJson(Map<String, dynamic> json) = _$_Config.fromJson;

  @override
  String get minimumSupportedAppVersion;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigCopyWith<_$_Config> get copyWith =>
      throw _privateConstructorUsedError;
}
