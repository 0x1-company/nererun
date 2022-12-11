import 'package:flutter/material.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class OffTimerButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final GestureTapCallback? onTap;

  const OffTimerButton({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12),
      height: 48,
      child: ListTile(
        onTap: onTap,
        title: Row(
          children: [
            Text(
              title,
              style: AppTextStyle.body5(AppColor.white),
            ),
            const Spacer(),
            if (isSelected) ...[
              Image.asset(
                'assets/check.png',
                width: 20,
                height: 20,
              )
            ]
          ],
        ),
      ),
    );
  }
}
