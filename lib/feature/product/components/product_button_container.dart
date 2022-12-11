import 'package:flutter/material.dart';

class ProductButtonContainer extends StatelessWidget {
  const ProductButtonContainer({
    Key? key,
    required this.isPlaying,
    required this.onTapPrevious,
    required this.onTapPlay,
    required this.onTapPause,
    required this.onTapNext,
  }) : super(key: key);

  final bool isPlaying;
  final Function(BuildContext context) onTapPrevious;
  final Function(BuildContext context) onTapPlay;
  final Function(BuildContext context) onTapPause;
  final Function(BuildContext context) onTapNext;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            onTapPrevious(context);
          },
          iconSize: 30,
          icon: Image.asset('assets/back_15.png'),
        ),
        const SizedBox(width: 50),
        IconButton(
          onPressed: () {
            isPlaying ? onTapPause(context) : onTapPlay(context);
          },
          iconSize: 50,
          icon: Image.asset(
            isPlaying ? 'assets/pause_circle.png' : 'assets/play_circle.png',
          ),
        ),
        const SizedBox(width: 50),
        IconButton(
          onPressed: () {
            onTapNext(context);
          },
          iconSize: 30,
          icon: Image.asset('assets/front_15.png'),
        ),
      ],
    );
  }
}
