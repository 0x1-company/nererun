import 'package:flutter/material.dart';
import 'package:nererun/components/rounded.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class PremiumPurchaseButton extends StatelessWidget {
  final Function(BuildContext context) onTap;

  const PremiumPurchaseButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedInk(
      key,
      radius: 8,
      color: AppColor.blue,
      onTap: onTap,
      child: SizedBox(
        height: 58,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ネレルン プレミアムに登録',
              style: AppTextStyle.body1(AppColor.white),
            ),
            Text(
              '￥960/月',
              style: AppTextStyle.body2(AppColor.white),
            ),
          ],
        ),
      ),
    );
  }
}
