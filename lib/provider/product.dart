import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nererun/entity/product.dart';
import 'package:riverpod/riverpod.dart';

final productStreamProvider = StreamProvider<List<Product>>((ref) {
  return FirebaseFirestore.instance
      .collection('/products')
      .snapshots()
      .map((event) => event.docs)
      .map((event) => event.map((e) => Product.fromJson(e.data())).toList());
});
