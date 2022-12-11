import 'package:flutter/material.dart';
import 'package:nererun/feature/home/components/top_banner_setting_card.dart';
import 'package:nererun/entity/top_banner_setting.dart';

class TopBannerSettingPane extends StatelessWidget {
  final List<TopBannerSetting> topBannerSettings;

  const TopBannerSettingPane(
    Key? key,
    this.topBannerSettings,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: topBannerSettings.isNotEmpty,
      child: Column(
        children:
            topBannerSettings.map((d) => TopBannerSettingCard(key, d)).toList(),
      ),
    );
  }
}
