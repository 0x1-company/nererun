import 'package:flutter/material.dart';
import 'package:nererun/feature/home/components/product_card.dart';
import 'package:nererun/feature/home/components/top_header.dart';
import 'package:nererun/entity/product.dart';

class TopStoryPane extends StatelessWidget {
  final List<Product> stories;

  const TopStoryPane(
    Key? key,
    this.stories,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: stories.isNotEmpty,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const TopHeader(
              title: 'ストーリー',
              description: 'かんたんな言葉の意味が理解できる年齢のお子さん（２歳〜）におすすめです。',
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 8),
                ...stories.map((d) => ProductCard(key, d)).toList(),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
