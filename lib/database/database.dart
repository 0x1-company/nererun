import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nererun/provider/user.dart';
import 'package:riverpod/riverpod.dart';

final databaseProvider = Provider<DatabaseConnection>((ref) {
  final stream = ref.watch(userStreamProvider);
  final uid = stream.asData?.value?.id;
  if (uid == null) {
    throw UnimplementedError('Must be called service/auth.dart callSignIn');
  }
  return DatabaseConnection(uid);
});

abstract class _CollectionPath {
  static const String users = "users";
  static String userPrivates(String uid) => '$users/$uid/privates';
}

class DatabaseConnection {
  final String _uid;
  String get userId => _uid;

  DatabaseConnection(this._uid);

  DocumentReference userReference() {
    return FirebaseFirestore.instance
        .collection(_CollectionPath.users)
        .doc(_uid);
  }

  DocumentReference userPrivateReference() {
    return FirebaseFirestore.instance
        .collection(_CollectionPath.userPrivates(_uid))
        .doc(_uid);
  }
}
