// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_banner_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopBannerSettingImpl _$$TopBannerSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$TopBannerSettingImpl(
      title: json['title'] as String,
      titleColor: json['titleColor'] as int? ?? 0xFFEDC845,
      body: json['body'] as String,
      bodyColor: json['bodyColor'] as int? ?? 0xFFFFFFFF,
      url: json['url'] as String,
      position: json['position'] as int? ?? 99,
      isVisible: json['isVisible'] as bool? ?? false,
    );

Map<String, dynamic> _$$TopBannerSettingImplToJson(
        _$TopBannerSettingImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'titleColor': instance.titleColor,
      'body': instance.body,
      'bodyColor': instance.bodyColor,
      'url': instance.url,
      'position': instance.position,
      'isVisible': instance.isVisible,
    };
