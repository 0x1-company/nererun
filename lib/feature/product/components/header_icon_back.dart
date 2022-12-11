import 'package:flutter/material.dart';

class HeaderIconBack extends StatelessWidget {
  final Function(BuildContext context) onPressed;

  const HeaderIconBack({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressed(context);
        Navigator.of(context).pop();
      },
      iconSize: 24,
      icon: Image.asset(
        'assets/back.png',
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
