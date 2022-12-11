import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nererun/components/gradient_scaffold.dart';
import 'package:nererun/components/nererun_app_bar.dart';
import 'package:nererun/components/scaffold_indicator.dart';
import 'package:nererun/feature/home/components/top_banner_setting_pane.dart';
import 'package:nererun/feature/home/components/top_music_box_pane.dart';
import 'package:nererun/feature/home/components/top_music_pane.dart';
import 'package:nererun/feature/home/components/top_recommended_pane.dart';
import 'package:nererun/feature/home/components/top_sound_pane.dart';
import 'package:nererun/feature/home/components/top_story_pane.dart';
import 'package:nererun/feature/home/state.codegen.dart';
import 'package:nererun/feature/routes.dart';
import 'package:nererun/util/assets.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeAsyncStateProvider);
    return state.when(
      data: (state) {
        return GradientScaffold(
          body: RefreshIndicator(
            onRefresh: () async => ref.refresh(homeAsyncStateProvider),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TopBannerSettingPane(key, state.topBannerSettings),
                  const SizedBox(height: 24),
                  TopRecommendedPane(key, state.recommendations),
                  const SizedBox(height: 24),
                  TopStoryPane(key, state.stories),
                  const SizedBox(height: 24),
                  TopSoundPane(key, state.sounds),
                  const SizedBox(height: 24),
                  TopMusicBoxPane(key, state.musicBoxes),
                  const SizedBox(height: 24),
                  TopMusicPane(key, state.musics),
                  const SizedBox(height: 160),
                ],
              ),
            ),
          ),
          appBar: NererunAppBar(
            title: Image.asset(
              'assets/nererun_logo.png',
              width: 75,
              height: 24,
            ),
            actions: [
              IconButton(
                onPressed: () {
                  HapticFeedback.mediumImpact();
                  Navigator.of(context).push(
                    Routes.initialSettingOffTimerRoute(),
                  );
                },
                icon: SvgPicture.asset(Assets.svg('clock')),
              ),
              IconButton(
                onPressed: () {
                  HapticFeedback.mediumImpact();
                  Navigator.of(context).push(
                    Routes.settingRoute(),
                  );
                },
                iconSize: 24,
                icon: Image.asset(Assets.png('settings')),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        ref.refresh(homeAsyncStateProvider);
        return Container();
      },
      loading: () => const ScaffoldIndicator(),
    );
  }
}
