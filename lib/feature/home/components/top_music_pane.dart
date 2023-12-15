import 'package:flutter/material.dart';
import 'package:nererun/feature/home/components/product_card.dart';
import 'package:nererun/feature/home/components/top_header.dart';
import 'package:nererun/entity/product.dart';

class TopMusicPane extends StatelessWidget {
  final List<Product> musics;

  const TopMusicPane(
    Key? key,
    this.musics,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: musics.isNotEmpty,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const TopHeader(
              title: 'ミュージック',
              description: 'やさしいアンビエントミュージックです。幅広い年齢のお子さんにおすすめです。',
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 8),
                ...musics.map((d) => ProductCard(key, d)),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
