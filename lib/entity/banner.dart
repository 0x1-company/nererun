import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
abstract class Banner with _$Banner {
  const factory Banner({
    required String title,
    required int titleColor,
    required String body,
    required String url,
  }) = _Banner;
  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}
