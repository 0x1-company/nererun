import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nererun/entity/product.dart';
import 'package:nererun/entity/top_banner_setting.dart';
import 'package:nererun/entity/top_layout.dart';
import 'package:nererun/provider/product.dart';
import 'package:nererun/provider/top_banner_setting.dart';
import 'package:nererun/provider/top_layout.dart';
import 'package:nererun/provider/user.dart';
import 'package:riverpod/riverpod.dart';

part 'state.codegen.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required List<TopBannerSetting> topBannerSettings,
    required List<Product> recommendations,
    required List<Product> stories,
    required List<Product> sounds,
    required List<Product> musicBoxes,
    required List<Product> musics,
  }) = _HomeState;
  HomeState._();
}

final homeAsyncStateProvider =
    Provider.autoDispose<AsyncValue<HomeState>>((ref) {
  ref.watch(userStreamProvider);
  final products = ref.watch(productStreamProvider).value;
  final topLayouts = ref.watch(topLayoutStreamProvider).value;
  final topBannerSettings = ref.watch(topBannerSettingStreamProvider).value;

  if (products == null || topLayouts == null || topBannerSettings == null) {
    return const AsyncLoading();
  }

  List<Product> filterable(TopLayoutType type) => topLayouts
      .firstWhere((e) => e.type == type)
      .productIDs
      .map((id) => products.firstWhere((p) => p.id == id))
      .toList();

  return AsyncValue.data(HomeState(
    topBannerSettings: topBannerSettings,
    recommendations: filterable(TopLayoutType.recommendations),
    stories: filterable(TopLayoutType.stories),
    sounds: filterable(TopLayoutType.sounds),
    musicBoxes: filterable(TopLayoutType.musicBoxes),
    musics: filterable(TopLayoutType.musics),
  ));
});
