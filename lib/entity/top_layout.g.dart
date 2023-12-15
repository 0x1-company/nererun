// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_layout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopLayoutImpl _$$TopLayoutImplFromJson(Map<String, dynamic> json) =>
    _$TopLayoutImpl(
      type: $enumDecodeNullable(_$TopLayoutTypeEnumMap, json['type']),
      productIDs: (json['productIDs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TopLayoutImplToJson(_$TopLayoutImpl instance) =>
    <String, dynamic>{
      'type': _$TopLayoutTypeEnumMap[instance.type],
      'productIDs': instance.productIDs,
    };

const _$TopLayoutTypeEnumMap = {
  TopLayoutType.recommendations: 'recommendations',
  TopLayoutType.stories: 'stories',
  TopLayoutType.sounds: 'sounds',
  TopLayoutType.musicBoxes: 'musicBoxes',
  TopLayoutType.musics: 'musics',
};
