import 'package:flutter/material.dart';
import 'package:nererun/components/rounded.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class PremiumPurchaseMiniButton extends StatelessWidget {
  final Function(BuildContext context) onTap;

  const PremiumPurchaseMiniButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedInk(
      key,
      radius: 20,
      color: AppColor.blue,
      onTap: onTap,
      child: SizedBox(
        height: 40,
        width: 188,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'ネレルン プレミアムに登録',
              style: AppTextStyle.body2(AppColor.white),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
