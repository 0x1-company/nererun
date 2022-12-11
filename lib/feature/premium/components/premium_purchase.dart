import 'package:flutter/material.dart';
import 'package:nererun/feature/premium/components/premium_purchase_mini_button.dart';
import 'package:nererun/feature/premium/components/premium_restore_mini_button.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';
import 'package:nererun/util/assets.dart';

class PremiumPurchase extends StatelessWidget {
  final Function(BuildContext context) purchase;
  final Function(BuildContext context) restore;

  const PremiumPurchase({
    Key? key,
    required this.purchase,
    required this.restore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.png('premium_background'),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 56),
                  Image.asset(
                    Assets.png('premium_header'),
                    width: 238,
                    height: 43,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '￥960/ 月を\n２週間無料でお試し',
                    style: AppTextStyle.header2(AppColor.white),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '登録から13日後の解約期限までに\n解約した場合、料金は一切かかりません',
                    style: AppTextStyle.body1(AppColor.white),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      PremiumPurchaseMiniButton(onTap: purchase),
                      const SizedBox(width: 12),
                      PremiumRestoreMiniButton(onTap: restore),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '※無料トライアルは初めて登録する方が対象です',
                    style: AppTextStyle.body4(AppColor.gray3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
