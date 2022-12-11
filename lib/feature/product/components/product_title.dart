import 'package:flutter/material.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class ProductTitle extends StatelessWidget {
  final String title;

  const ProductTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.header2(AppColor.white),
        ),
      ],
    );
  }
}
