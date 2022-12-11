import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nererun/entity/top_layout.dart';
import 'package:riverpod/riverpod.dart';

final topLayoutStreamProvider = StreamProvider<List<TopLayout>>((ref) {
  return FirebaseFirestore.instance
      .collection('/topLayouts')
      .snapshots()
      .map((event) => event.docs)
      .map((event) => event.map((e) => TopLayout.fromJson(e.data())).toList());
});
