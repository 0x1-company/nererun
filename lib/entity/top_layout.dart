import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_layout.freezed.dart';
part 'top_layout.g.dart';

enum TopLayoutType {
  recommendations,
  stories,
  sounds,
  musicBoxes,
  musics,
}

@freezed
abstract class TopLayout with _$TopLayout {
  factory TopLayout({
    TopLayoutType? type,
    @Default([]) List<String> productIDs,
  }) = _TopLayout;
  factory TopLayout.fromJson(Map<String, dynamic> json) =>
      _$TopLayoutFromJson(json);
}
