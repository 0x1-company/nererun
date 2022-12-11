import 'package:flutter/material.dart';
import 'package:nererun/feature/home/components/product_card.dart';
import 'package:nererun/feature/home/components/top_header.dart';
import 'package:nererun/entity/product.dart';

class TopSoundPane extends StatelessWidget {
  final List<Product> sounds;

  const TopSoundPane(
    Key? key,
    this.sounds,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: sounds.isNotEmpty,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const TopHeader(
              title: 'サウンド',
              description: '生活音や環境音など。まだ言葉の意味はわからないお子さん（０歳〜）におすすめです。',
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 8),
                ...sounds.map((d) => ProductCard(key, d)).toList(),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
