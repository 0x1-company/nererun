import 'package:flutter/material.dart';
import 'package:nererun/entity/product.dart';
import 'package:nererun/feature/off_timer/off_timer_page.dart';
import 'package:nererun/feature/premium/premium_sheet.dart';
import 'package:nererun/feature/product/product_page.dart';
import 'package:nererun/feature/about/about.dart';

class Routes {
  static initialSettingOffTimerRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: 'OffTimerScreen'),
      builder: (_) => const OffTimerScreen(),
    );
  }

  static premiumRoute() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      settings: const RouteSettings(name: 'PremiumSheet'),
      builder: (_) => const PremiumSheet(),
    );
  }

  static productRoute(Product product) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: 'ProductPage'),
      builder: (_) => ProductPage(product: product),
    );
  }

  static settingRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: 'AboutScreen'),
      builder: (_) => const AboutScreen(),
    );
  }
}
