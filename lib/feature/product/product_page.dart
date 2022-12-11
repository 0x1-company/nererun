import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nererun/components/gradient_scaffold.dart';
import 'package:nererun/entity/product.dart';
import 'package:nererun/feature/product/components/product_button_container.dart';
import 'package:nererun/feature/product/components/product_header.dart';
import 'package:nererun/feature/product/components/product_overlay.dart';
import 'package:nererun/feature/product/components/product_title.dart';
import 'package:nererun/feature/product/product_state.dart';
import 'package:nererun/feature/product/product_store.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/text_style.dart';

class ProductPage extends HookConsumerWidget {
  final Product product;
  final player = AssetsAudioPlayer.newPlayer();

  ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productStoreProvider(product));
    final store = ref.watch(productStoreProvider(product).notifier);

    return _ProductPage(state: state, store: store);
  }
}

class _ProductPage extends StatelessWidget {
  final ProductState state;
  final ProductStore store;

  const _ProductPage({
    Key? key,
    required this.state,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            store.product.imageUrl,
            fit: BoxFit.cover,
          ),
          const ProductOverlay(),
          ProductHeader(
            onPressed: (_) async {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ProductTitle(title: store.product.title),
                const SizedBox(height: 36),
                Slider(
                  activeColor: AppColor.white,
                  inactiveColor: const Color(0xFFB3B3B3),
                  value: 0.0,
                  onChanged: (value) => print(value),
                ),
                Row(
                  children: [
                    Text(
                      _format(state.currentPosition),
                      style: AppTextStyle.body2(AppColor.gray3),
                    ),
                    const Spacer(),
                    Text(
                      _format(state.duration ?? const Duration(hours: 1)),
                      style: AppTextStyle.body2(AppColor.gray3),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                store.builderIsPlaying(builder: (
                  context,
                  bool? isPlaying,
                ) {
                  return ProductButtonContainer(
                    isPlaying: isPlaying ?? false,
                    onTapPrevious: (_) {
                      store.seekBy(
                        const Duration(seconds: -15),
                      );
                    },
                    onTapPlay: (_) {
                      store.play();
                    },
                    onTapPause: (_) {
                      store.pause();
                    },
                    onTapNext: (_) {
                      store.seekBy(
                        const Duration(seconds: 15),
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _format(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
