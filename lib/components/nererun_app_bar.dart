import 'package:flutter/material.dart';
import 'package:nererun/resource/color.dart';

class NererunAppBar extends AppBar {
  NererunAppBar({
    Key? key,
    Widget? title,
    List<Widget>? actions,
  }) : super(
          key: key,
          elevation: 0,
          backgroundColor: AppColor.primary,
          title: title,
          actions: actions,
        );
}
