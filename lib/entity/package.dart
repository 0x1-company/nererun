import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'package.g.dart';
part 'package.freezed.dart';

@freezed
abstract class Package implements _$Package {
  const factory Package({
    required String latestOS,
    required String appName,
    required String appVersion,
    required String buildNumber,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
  Map<String, dynamic> toJson() => _$$_PackageToJson(this as _$_Package);
}
