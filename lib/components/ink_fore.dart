import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InkFore extends StatelessWidget {
  const InkFore(
    Key? key, {
    required this.onTap,
    required this.child,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  final Function(BuildContext context) onTap;
  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: padding,
          child: child,
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                HapticFeedback.mediumImpact();
                onTap(context);
                return;
              },
            ),
          ),
        ),
      ],
    );
  }
}
