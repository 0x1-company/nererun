import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_banner_setting.freezed.dart';
part 'top_banner_setting.g.dart';

@freezed
abstract class TopBannerSetting with _$TopBannerSetting {
  factory TopBannerSetting({
    required String title,
    @Default(0xFFEDC845) int titleColor,
    required String body,
    @Default(0xFFFFFFFF) int bodyColor,
    required String url,
    @Default(99) int position,
    @Default(false) bool isVisible,
  }) = _TopBannerSetting;
  factory TopBannerSetting.fromJson(Map<String, dynamic> json) =>
      _$TopBannerSettingFromJson(json);
}
