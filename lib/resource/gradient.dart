import 'package:flutter/material.dart';
import 'package:nererun/resource/color.dart';

class AppGradient {
  static const primary = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
    colors: [AppColor.primary, Color(0xFF4D16A7)],
  );

  static final opacity = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: const [0, 1],
    colors: [
      AppColor.primary.withOpacity(0.7),
      const Color(0xFF4D16A7).withOpacity(0.7),
    ],
  );

  static const accent = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 1],
    colors: [
      AppColor.accent,
      Color(0xFFAB1E6A),
    ],
  );
}
