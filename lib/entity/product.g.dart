// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      audioUrl: json['audioUrl'] as String? ?? '',
      duration: json['duration'] as int? ?? 0,
      thumbnailImageUrl: json['thumbnailImageUrl'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'audioUrl': instance.audioUrl,
      'duration': instance.duration,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'imageUrl': instance.imageUrl,
    };
