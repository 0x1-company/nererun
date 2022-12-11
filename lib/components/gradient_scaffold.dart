import 'package:flutter/material.dart';
import 'package:nererun/resource/gradient.dart';

class GradientScaffold extends Scaffold {
  GradientScaffold({
    AppBar? appBar,
    Widget? bottomNavigationBar,
    Widget? body,
    Key? key,
  }) : super(
          key: key,
          appBar: appBar,
          bottomNavigationBar: bottomNavigationBar,
          body: Container(
            child: body,
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: AppGradient.primary,
            ),
          ),
        );
}
