import 'package:flutter/material.dart';
import 'package:nererun/resource/font_family.dart';

class AppTextStyle {
  static TextStyle header1(Color color) {
    return TextStyle(
      fontSize: 36,
      fontFamily: FontFamily.notoSansJpBold,
      fontStyle: FontStyle.normal,
      color: color,
    );
  }

  static TextStyle header2(Color color) {
    return TextStyle(
      fontSize: 24,
      fontFamily: FontFamily.notoSansJpBold,
      fontStyle: FontStyle.normal,
      color: color,
    );
  }

  static TextStyle body1(Color color) {
    return TextStyle(
      fontSize: 16,
      fontFamily: FontFamily.notoSansJpBold,
      fontStyle: FontStyle.normal,
      color: color,
    );
  }

  static TextStyle body2(Color color) {
    return TextStyle(
      fontSize: 12,
      fontFamily: FontFamily.notoSansJpBold,
      fontStyle: FontStyle.normal,
      color: color,
    );
  }

  static TextStyle body3(Color color) {
    return TextStyle(
      fontSize: 12,
      fontFamily: FontFamily.notoSansJpRegular,
      fontStyle: FontStyle.normal,
      color: color,
    );
  }

  static TextStyle body4(Color color) {
    return TextStyle(
      fontSize: 11,
      fontFamily: FontFamily.notoSansJpRegular,
      fontStyle: FontStyle.normal,
      color: color,
    );
  }

  static TextStyle body5(Color color) {
    return TextStyle(
      fontSize: 16,
      fontFamily: FontFamily.notoSansJpRegular,
      fontStyle: FontStyle.normal,
      color: color,
    );
  }
}
