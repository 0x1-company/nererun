import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nererun/entity/product.dart';
import 'package:nererun/feature/routes.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard(
    Key? key,
    this.product,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        Navigator.of(context).push(
          Routes.productRoute(product),
        );
      },
      child: Container(
        width: 144 + 8,
        height: 194,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                product.thumbnailImageUrl,
                width: 144,
                height: 144,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.title,
              style: AppTextStyle.body2(AppColor.white),
            ),
            const SizedBox(height: 8),
            Text(
              '${product.duration}分',
              style: AppTextStyle.body3(AppColor.gray3),
            ),
          ],
        ),
      ),
    );
  }
}
