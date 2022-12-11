import 'package:flutter/material.dart';
import 'package:nererun/components/rounded.dart';
import 'package:nererun/entity/top_banner_setting.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TopBannerSettingCard extends StatelessWidget {
  final TopBannerSetting topBannerSetting;

  const TopBannerSettingCard(
    Key? key,
    this.topBannerSetting,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: topBannerSetting.isVisible,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: RoundedInk(
          key,
          radius: 12,
          color: AppColor.black2,
          onTap: (_) async {
            launchUrlString(
              topBannerSetting.url,
              mode: LaunchMode.externalApplication,
            );
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColor.white, width: 0.5),
              color: AppColor.black2,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      topBannerSetting.title,
                      style: AppTextStyle.body2(AppColor.blue).copyWith(
                        color: Color(topBannerSetting.titleColor),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      topBannerSetting.body,
                      style: AppTextStyle.body2(AppColor.white).copyWith(
                        color: Color(topBannerSetting.bodyColor),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset('assets/chevron_right.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
