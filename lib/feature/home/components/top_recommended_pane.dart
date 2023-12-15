import 'package:flutter/material.dart';
import 'package:nererun/feature/home/components/product_card.dart';
import 'package:nererun/feature/home/components/top_header.dart';
import 'package:nererun/entity/product.dart';

class TopRecommendedPane extends StatelessWidget {
  final List<Product> recommendations;

  const TopRecommendedPane(
    Key? key,
    this.recommendations,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: recommendations.isNotEmpty,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const TopHeader(
              title: 'ネレルンのおすすめ',
              description: '人気のあるおすすめのコンテンツです。',
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 8),
                ...recommendations.map((d) => ProductCard(key, d)),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
