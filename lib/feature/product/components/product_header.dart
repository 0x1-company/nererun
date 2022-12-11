import 'package:flutter/material.dart';
import 'package:nererun/feature/product/components/header_icon_back.dart';

class ProductHeader extends StatelessWidget {
  final Function(BuildContext context) onPressed;

  const ProductHeader({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeaderIconBack(onPressed: onPressed),
        ],
      ),
    );
  }
}
