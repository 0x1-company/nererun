import 'package:flutter/material.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class TopHeader extends StatelessWidget {
  final String title;
  final String description;

  const TopHeader({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.header2(AppColor.white),
          textAlign: TextAlign.left,
        ),
        Text(
          description,
          style: AppTextStyle.body2(AppColor.gray3),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
