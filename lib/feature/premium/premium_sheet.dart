import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nererun/components/gradient_scaffold.dart';
import 'package:nererun/components/nererun_app_bar.dart';
import 'package:nererun/components/scaffold_indicator.dart';
import 'package:nererun/feature/premium/components/premium_purchase.dart';
import 'package:nererun/feature/premium/components/premium_purchase_button.dart';
import 'package:nererun/feature/premium/premium_sheet_state_notifier.dart';
import 'package:nererun/feature/premium/premium_state.codegen.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';
import 'package:nererun/util/assets.dart';

class PremiumSheet extends HookConsumerWidget {
  const PremiumSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = ref.watch(premiumSheetStateNotifierProvider.notifier);
    final state = ref.watch(premiumSheetStateNotifierProvider);

    return state.when(
      data: (state) => _PremiumSheet(state: state, store: store),
      error: (error, _) => Container(),
      loading: () => const ScaffoldIndicator(),
    );
  }
}

class _PremiumSheet extends StatelessWidget {
  final PremiumState state;
  final PremiumSheetStateNotifier store;

  const _PremiumSheet({
    Key? key,
    required this.state,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: NererunAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PremiumPurchase(
              purchase: (_) => store.asyncAction.purchase(),
              restore: (_) async {
                final snackbar = await store.asyncAction.restore();
                if (snackbar) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 2),
                      content: Text("購入情報を復元しました"),
                    ),
                  );
                }
              },
            ),
            Image.asset(Assets.png('premium_nererun_function')),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: PremiumPurchaseButton(
                onTap: (_) => store.asyncAction.purchase(),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(Assets.png('premium_short_blurb')),
            ),
            const SizedBox(height: 40),
            Image.asset(Assets.png('premium_picture_book_diff')),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: PremiumPurchaseButton(
                onTap: (_) => store.asyncAction.purchase(),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '無料トライアルは初めて登録される方が対象です。無料トライアル終了後は、通常価格の960円/月に自動で更新されます。購入後のお支払いはApple IDアカウントに請求されます。更新日時の24時間前までに解約しない限り、登録が自動更新されます。AppStoreの設定から解約することができます。自動更新後の料金(960円)は、更新日時前の24時間以内に請求されます。',
                style: AppTextStyle.body4(AppColor.gray2),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
