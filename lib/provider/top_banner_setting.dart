import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nererun/entity/top_banner_setting.dart';
import 'package:riverpod/riverpod.dart';

final topBannerSettingStreamProvider =
    StreamProvider<List<TopBannerSetting>>((ref) {
  return FirebaseFirestore.instance
      .collection('/topBannerSettings')
      .snapshots()
      .map((event) => event.docs)
      .map((event) =>
          event.map((e) => TopBannerSetting.fromJson(e.data())).toList());
});
