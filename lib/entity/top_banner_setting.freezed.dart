// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_banner_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopBannerSetting _$TopBannerSettingFromJson(Map<String, dynamic> json) {
  return _TopBannerSetting.fromJson(json);
}

/// @nodoc
mixin _$TopBannerSetting {
  String get title => throw _privateConstructorUsedError;
  int get titleColor => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get bodyColor => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBannerSettingCopyWith<TopBannerSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBannerSettingCopyWith<$Res> {
  factory $TopBannerSettingCopyWith(
          TopBannerSetting value, $Res Function(TopBannerSetting) then) =
      _$TopBannerSettingCopyWithImpl<$Res>;
  $Res call(
      {String title,
      int titleColor,
      String body,
      int bodyColor,
      String url,
      int position,
      bool isVisible});
}

/// @nodoc
class _$TopBannerSettingCopyWithImpl<$Res>
    implements $TopBannerSettingCopyWith<$Res> {
  _$TopBannerSettingCopyWithImpl(this._value, this._then);

  final TopBannerSetting _value;
  // ignore: unused_field
  final $Res Function(TopBannerSetting) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? titleColor = freezed,
    Object? body = freezed,
    Object? bodyColor = freezed,
    Object? url = freezed,
    Object? position = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleColor: titleColor == freezed
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      bodyColor: bodyColor == freezed
          ? _value.bodyColor
          : bodyColor // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TopBannerSettingCopyWith<$Res>
    implements $TopBannerSettingCopyWith<$Res> {
  factory _$$_TopBannerSettingCopyWith(
          _$_TopBannerSetting value, $Res Function(_$_TopBannerSetting) then) =
      __$$_TopBannerSettingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      int titleColor,
      String body,
      int bodyColor,
      String url,
      int position,
      bool isVisible});
}

/// @nodoc
class __$$_TopBannerSettingCopyWithImpl<$Res>
    extends _$TopBannerSettingCopyWithImpl<$Res>
    implements _$$_TopBannerSettingCopyWith<$Res> {
  __$$_TopBannerSettingCopyWithImpl(
      _$_TopBannerSetting _value, $Res Function(_$_TopBannerSetting) _then)
      : super(_value, (v) => _then(v as _$_TopBannerSetting));

  @override
  _$_TopBannerSetting get _value => super._value as _$_TopBannerSetting;

  @override
  $Res call({
    Object? title = freezed,
    Object? titleColor = freezed,
    Object? body = freezed,
    Object? bodyColor = freezed,
    Object? url = freezed,
    Object? position = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_$_TopBannerSetting(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleColor: titleColor == freezed
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      bodyColor: bodyColor == freezed
          ? _value.bodyColor
          : bodyColor // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopBannerSetting implements _TopBannerSetting {
  _$_TopBannerSetting(
      {required this.title,
      this.titleColor = 0xFFEDC845,
      required this.body,
      this.bodyColor = 0xFFFFFFFF,
      required this.url,
      this.position = 99,
      this.isVisible = false});

  factory _$_TopBannerSetting.fromJson(Map<String, dynamic> json) =>
      _$$_TopBannerSettingFromJson(json);

  @override
  final String title;
  @override
  @JsonKey()
  final int titleColor;
  @override
  final String body;
  @override
  @JsonKey()
  final int bodyColor;
  @override
  final String url;
  @override
  @JsonKey()
  final int position;
  @override
  @JsonKey()
  final bool isVisible;

  @override
  String toString() {
    return 'TopBannerSetting(title: $title, titleColor: $titleColor, body: $body, bodyColor: $bodyColor, url: $url, position: $position, isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopBannerSetting &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.titleColor, titleColor) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.bodyColor, bodyColor) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(titleColor),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(bodyColor),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(isVisible));

  @JsonKey(ignore: true)
  @override
  _$$_TopBannerSettingCopyWith<_$_TopBannerSetting> get copyWith =>
      __$$_TopBannerSettingCopyWithImpl<_$_TopBannerSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopBannerSettingToJson(
      this,
    );
  }
}

abstract class _TopBannerSetting implements TopBannerSetting {
  factory _TopBannerSetting(
      {required final String title,
      final int titleColor,
      required final String body,
      final int bodyColor,
      required final String url,
      final int position,
      final bool isVisible}) = _$_TopBannerSetting;

  factory _TopBannerSetting.fromJson(Map<String, dynamic> json) =
      _$_TopBannerSetting.fromJson;

  @override
  String get title;
  @override
  int get titleColor;
  @override
  String get body;
  @override
  int get bodyColor;
  @override
  String get url;
  @override
  int get position;
  @override
  bool get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$_TopBannerSettingCopyWith<_$_TopBannerSetting> get copyWith =>
      throw _privateConstructorUsedError;
}
