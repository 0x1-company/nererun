import 'package:flutter/material.dart';
import 'package:nererun/components/gradient_scaffold.dart';
import 'package:nererun/components/rounded.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';
import 'package:nererun/util/platform.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ForceUpdate extends StatelessWidget {
  const ForceUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Dialog(
        backgroundColor: AppColor.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 32, 20, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'アップデートのお知らせ',
                style: AppTextStyle.body1(AppColor.white),
              ),
              const SizedBox(height: 20),
              Text(
                '...おや？！ネレルンのようすが...！各種パフォーマンスの改善を行いました。安定してご利用いただくために、最新バージョンへのアップデートをお願いいたします。',
                textAlign: TextAlign.left,
                style: AppTextStyle.body2(AppColor.white),
              ),
              const SizedBox(height: 20),
              RoundedInk(
                key,
                radius: 24,
                onTap: (_) {
                  launchUrlString(
                    storeURL,
                    mode: LaunchMode.externalApplication,
                  );
                },
                child: Container(
                  color: AppColor.white,
                  width: double.infinity,
                  height: 48,
                  alignment: Alignment.center,
                  child: Text(
                    'アップデートする',
                    style: AppTextStyle.body1(AppColor.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
