import 'dart:io';

String get storeURL {
  return Platform.isIOS
      ? 'https://apps.apple.com/us/app/id1591420871'
      : 'https://play.google.com/store/apps/details?id=tokyo.gajo.app.android.nererun';
}
