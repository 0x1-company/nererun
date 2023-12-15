import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  factory Product({
    @Default('') String id,
    @Default('') String title,
    @Default('') String audioUrl,
    @Default(0) int duration,
    @Default('') String thumbnailImageUrl,
    @Default('') String imageUrl,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
