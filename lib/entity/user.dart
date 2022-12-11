import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:nererun/entity/off_timer_type.dart';
import 'package:nererun/entity/package.dart';

part 'user.freezed.dart';
part 'user.g.dart';

extension UserPrivateFirestoreFieldKeys on String {
  static const fcmToken = 'fcmToken';
  static const latestPremiumPlanIdentifier = "latestPremiumPlanIdentifier";
  static const originalPurchaseDate = "originalPurchaseDate";
  static const activeSubscriptions = "activeSubscriptions";
  static const entitlementIdentifier = "entitlementIdentifier";
  static const premiumFunctionSurvey = "premiumFunctionSurvey";
}

extension UserFirestoreFieldKeys on String {
  static const id = 'id';
  static const isAnonymous = "isAnonymous";
  static const settings = 'settings';
  static const packageInfo = "packageInfo";

  static const isPremium = "isPremium";
  static const purchaseAppID = "purchaseAppID";

  static const offTimerType = 'offTimerType';
}

@freezed
abstract class User with _$User {
  const factory User({
    @Default('') String id,
    @Default(true) bool isAnonymous,
    @Default(OffTimerType.off) OffTimerType offTimerType,
    Package? packageInfo,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
