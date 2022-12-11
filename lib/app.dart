import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:nererun/analytics.dart';
import 'package:nererun/feature/root/root.dart';
import 'package:nererun/resource/color.dart';
import 'package:nererun/resource/font_family.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Root(),
      theme: ThemeData(
        primaryColor: AppColor.black,
        backgroundColor: AppColor.black,
        scaffoldBackgroundColor: AppColor.black,
        fontFamily: FontFamily.notoSansJpRegular,
      ),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: firebaseAnalytics),
        routeObserver,
      ],
    );
  }
}
