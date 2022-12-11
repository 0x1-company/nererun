import 'package:nererun/util/version/version.dart';
import 'package:package_info/package_info.dart';
import 'package:riverpod/riverpod.dart';

final versionProvider = FutureProvider((_) async {
  final package = await PackageInfo.fromPlatform();
  return Version.parse(package.version);
});
