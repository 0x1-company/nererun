import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:nererun/entity/banner.dart';
import 'package:nererun/entity/off_timer_type.dart';
import 'package:nererun/entity/product.dart';
import 'package:nererun/entity/top_banner_setting.dart';

final firebaseAnalytics = FirebaseAnalytics.instance;

class Analytics {
  String screenName = '';

  setCurrentScreen({
    required String screenName,
    String screenClassOverride = 'Flutter',
  }) async {
    return firebaseAnalytics.setCurrentScreen(
      screenName: screenName,
      screenClassOverride: screenClassOverride,
    );
  }

  Future<void> logEvent(
    String eventName, {
    Map<String, dynamic>? params,
    int? index,
    Product? product,
    AuthorizationStatus? status,
    Banner? banner,
    OffTimerType? offTimerType,
    TopBannerSetting? topBannerSetting,
  }) async {
    params ??= <String, dynamic>{};

    _addParamsAudioContent(params, product);
    _addAuthorizationStatus(params, status);
    _addBanner(params, banner);
    _addTopBannerSetting(params, topBannerSetting);
    _offTimerType(params, offTimerType);

    return _send(eventName: eventName, params: params);
  }

  Future<void> _send({
    required String eventName,
    required Map<String, dynamic> params,
  }) async {
    params.addAll(await _paramsCommon());
    print('$eventName: $params');
    try {
      return firebaseAnalytics.logEvent(name: eventName, parameters: params);
    } on Exception catch (error) {
      print(error);
    }
  }

  Future<Map<String, dynamic>> _paramsCommon() async {
    var params = <String, dynamic>{'screen_name': screenName};
    return params;
  }

  void _addParamsAudioContent(
    Map<String, dynamic> params,
    Product? product,
  ) {
    if (product == null) return;
    params.addAll(<String, dynamic>{
      'audioContentTitle': product.title,
    });
  }

  void _addAuthorizationStatus(
    Map<String, dynamic> params,
    AuthorizationStatus? status,
  ) {
    if (status == null) return;
    final value = status.toString().replaceAll('AuthorizationStatus.', '');
    params.addAll(<String, dynamic>{
      'status': value,
    });
  }

  void _addBanner(
    Map<String, dynamic> params,
    Banner? banner,
  ) {
    if (banner == null) return;
    params.addAll(<String, dynamic>{
      'bannerTitle': banner.title,
      'bannerBody': banner.body,
      'bannerUrl': banner.url,
    });
  }

  void _addTopBannerSetting(
    Map<String, dynamic> params,
    TopBannerSetting? banner,
  ) {
    if (banner == null) return;
    params.addAll(<String, dynamic>{
      'bannerTitle': banner.title,
      'bannerBody': banner.body,
      'bannerUrl': banner.url,
    });
  }

  void _offTimerType(
    Map<String, dynamic> params,
    OffTimerType? offTimerType,
  ) {
    if (offTimerType == null) return;
    params.addAll(<String, dynamic>{
      'offTimerTypeRawPath': offTimerType.rawPath,
    });
  }
}

Analytics analytics = Analytics();
