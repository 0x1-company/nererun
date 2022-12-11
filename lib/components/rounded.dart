import 'package:nererun/components/ink_fore.dart';
import 'package:flutter/material.dart';

class Rounded extends StatelessWidget {
  const Rounded(
    Key? key, {
    this.elevation = 0,
    required this.radius,
    required this.child,
    this.color,
    this.roundPosition = const RoundPosition(),
  }) : super(key: key);

  final double elevation;
  final double radius;
  final Widget child;
  final Color? color;
  final RoundPosition roundPosition;

  @override
  Widget build(BuildContext context) {
    final circular = Radius.circular(radius);
    final borderRadius = BorderRadius.only(
      topLeft: roundPosition.topLeft ? circular : Radius.zero,
      topRight: roundPosition.topRight ? circular : Radius.zero,
      bottomLeft: roundPosition.bottomLeft ? circular : Radius.zero,
      bottomRight: roundPosition.bottomRight ? circular : Radius.zero,
    );

    return Card(
      margin: EdgeInsets.zero,
      elevation: elevation,
      clipBehavior: Clip.antiAlias,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: child,
    );
  }
}

class RoundedInk extends StatelessWidget {
  const RoundedInk(
    Key? key, {
    this.elevation = 0,
    required this.radius,
    required this.onTap,
    this.padding = EdgeInsets.zero,
    required this.child,
    this.color,
    this.roundPosition = const RoundPosition(),
  }) : super(key: key);

  final double elevation;
  final double radius;
  final Function(BuildContext context) onTap;
  final EdgeInsetsGeometry padding;
  final Widget child;
  final Color? color;
  final RoundPosition roundPosition;

  @override
  Widget build(BuildContext context) {
    return Rounded(
      key,
      elevation: elevation,
      radius: radius,
      color: color,
      roundPosition: roundPosition,
      child: InkFore(
        key,
        onTap: onTap,
        padding: padding,
        child: child,
      ),
    );
  }
}

class RoundPosition {
  const RoundPosition({
    this.topLeft = true,
    this.topRight = true,
    this.bottomLeft = true,
    this.bottomRight = true,
  });

  const RoundPosition.top() : this(bottomLeft: false, bottomRight: false);

  const RoundPosition.bottom() : this(topLeft: false, topRight: false);

  const RoundPosition.left() : this(topRight: false, bottomRight: false);

  const RoundPosition.right() : this(topLeft: false, bottomLeft: false);

  final bool topLeft;
  final bool topRight;
  final bool bottomLeft;
  final bool bottomRight;
}
