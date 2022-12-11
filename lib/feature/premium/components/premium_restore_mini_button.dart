import 'package:flutter/material.dart';
import 'package:nererun/components/rounded.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class PremiumRestoreMiniButton extends StatelessWidget {
  final Function(BuildContext context) onTap;

  const PremiumRestoreMiniButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedInk(
      key,
      radius: 20,
      onTap: onTap,
      child: SizedBox(
        height: 40,
        width: 115,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              '登録済みの方',
              style: AppTextStyle.body2(AppColor.black),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
