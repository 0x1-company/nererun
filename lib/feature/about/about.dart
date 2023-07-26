import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nererun/components/gradient_scaffold.dart';
import 'package:nererun/components/nererun_app_bar.dart';
import 'package:nererun/components/scaffold_indicator.dart';
import 'package:nererun/feature/about/state.codegen.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';
import 'package:nererun/components/ink_fore.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutScreen extends HookConsumerWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(aboutAsyncStateProvider);
    return state.when(
      data: (state) => _AboutScreen(state: state),
      error: (error, stackTrace) {
        print(error);
        print(stackTrace);
        return Container();
      },
      loading: () => const ScaffoldIndicator(),
    );
  }
}

class _AboutScreen extends StatelessWidget {
  final AboutState state;

  const _AboutScreen({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: NererunAppBar(
        title: Text(
          'ネレルンについて',
          style: AppTextStyle.body1(AppColor.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 24, right: 24),
        children: [
          _clickContent('Instagram', (context) async {
            await launchUrlString(
              'https://www.instagram.com/nererun_jp',
              mode: LaunchMode.externalApplication,
            );
          }),
          _clickContent('Twitter', (context) async {
            await launchUrlString(
              'https://twitter.com/nererun_jp',
              mode: LaunchMode.externalApplication,
            );
          }),
          _clickContent('公式サイト', (context) async {
            await launchUrlString(
              'https://nererunkids.studio.site',
              mode: LaunchMode.externalApplication,
            );
          }),
          _clickContent('利用規約', (context) async {
            await launchUrlString(
              'https://one-inc.gitbook.io/nererun/gui-yao/li-yong-gui-yao',
              mode: LaunchMode.externalApplication,
            );
          }),
          _clickContent('プライバシーポリシー', (context) async {
            await launchUrlString(
              'https://one-inc.gitbook.io/nererun/gui-yao/ge-ren-qing-bao-bao-hu-fang-zhen',
              mode: LaunchMode.externalApplication,
            );
          }),
          const SizedBox(height: 56),
          Align(
            alignment: Alignment.center,
            child: Text(
              state.packageVersion.version,
              style: AppTextStyle.body5(AppColor.white),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Made with ❤️ in Japan 🇯🇵',
              style: AppTextStyle.body5(AppColor.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _clickContent(String text, Function(BuildContext context) onClick) {
    return InkFore(
      key,
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: Row(
          children: [
            Text(
              text,
              style: AppTextStyle.body5(AppColor.white),
            ),
            const Spacer(),
            Image.asset('assets/chevron_right.png'),
          ],
        ),
      ),
    );
  }
}
