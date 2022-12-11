import 'package:flutter/material.dart';
import 'package:nererun/resource/gradient.dart';

class ProductOverlay extends StatelessWidget {
  const ProductOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 320,
          decoration: BoxDecoration(
            gradient: AppGradient.opacity,
          ),
        ),
      ],
    );
  }
}
