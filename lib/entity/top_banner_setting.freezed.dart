// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$TopBannerSettingCopyWithImpl<$Res, TopBannerSetting>;
  @useResult
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
class _$TopBannerSettingCopyWithImpl<$Res, $Val extends TopBannerSetting>
    implements $TopBannerSettingCopyWith<$Res> {
  _$TopBannerSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? titleColor = null,
    Object? body = null,
    Object? bodyColor = null,
    Object? url = null,
    Object? position = null,
    Object? isVisible = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleColor: null == titleColor
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      bodyColor: null == bodyColor
          ? _value.bodyColor
          : bodyColor // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopBannerSettingImplCopyWith<$Res>
    implements $TopBannerSettingCopyWith<$Res> {
  factory _$$TopBannerSettingImplCopyWith(_$TopBannerSettingImpl value,
          $Res Function(_$TopBannerSettingImpl) then) =
      __$$TopBannerSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$TopBannerSettingImplCopyWithImpl<$Res>
    extends _$TopBannerSettingCopyWithImpl<$Res, _$TopBannerSettingImpl>
    implements _$$TopBannerSettingImplCopyWith<$Res> {
  __$$TopBannerSettingImplCopyWithImpl(_$TopBannerSettingImpl _value,
      $Res Function(_$TopBannerSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? titleColor = null,
    Object? body = null,
    Object? bodyColor = null,
    Object? url = null,
    Object? position = null,
    Object? isVisible = null,
  }) {
    return _then(_$TopBannerSettingImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleColor: null == titleColor
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      bodyColor: null == bodyColor
          ? _value.bodyColor
          : bodyColor // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopBannerSettingImpl implements _TopBannerSetting {
  _$TopBannerSettingImpl(
      {required this.title,
      this.titleColor = 0xFFEDC845,
      required this.body,
      this.bodyColor = 0xFFFFFFFF,
      required this.url,
      this.position = 99,
      this.isVisible = false});

  factory _$TopBannerSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopBannerSettingImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopBannerSettingImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleColor, titleColor) ||
                other.titleColor == titleColor) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.bodyColor, bodyColor) ||
                other.bodyColor == bodyColor) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, titleColor, body,
      bodyColor, url, position, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopBannerSettingImplCopyWith<_$TopBannerSettingImpl> get copyWith =>
      __$$TopBannerSettingImplCopyWithImpl<_$TopBannerSettingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopBannerSettingImplToJson(
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
      final bool isVisible}) = _$TopBannerSettingImpl;

  factory _TopBannerSetting.fromJson(Map<String, dynamic> json) =
      _$TopBannerSettingImpl.fromJson;

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
  _$$TopBannerSettingImplCopyWith<_$TopBannerSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
