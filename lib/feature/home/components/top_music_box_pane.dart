import 'package:flutter/material.dart';
import 'package:nererun/feature/home/components/product_card.dart';
import 'package:nererun/feature/home/components/top_header.dart';
import 'package:nererun/entity/product.dart';

class TopMusicBoxPane extends StatelessWidget {
  final List<Product> musicBoxes;

  const TopMusicBoxPane(
    Key? key,
    this.musicBoxes,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: musicBoxes.isNotEmpty,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const TopHeader(
              title: 'オルゴール',
              description: 'やさしいオルゴールの音です。まだ言葉の意味はわからないお子さん（０歳〜）におすすめです。',
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 8),
                ...musicBoxes.map((d) => ProductCard(key, d)).toList(),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
