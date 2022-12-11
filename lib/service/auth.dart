import 'package:async/async.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';

final authServiceProvider = Provider(
  (ref) => AuthService(),
);

final authStateStreamProvider = StreamProvider(
  (ref) => _subscribe(),
);

class AuthService {
  Stream<User?> stream() {
    return _subscribe();
  }
}

Stream<User?> _subscribe() {
  return StreamGroup.merge(
    [
      callSignin().asStream(),
      FirebaseAuth.instance.userChanges(),
    ],
  );
}

Future<User> callSignin() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    return currentUser;
  }

  final value = await FirebaseAuth.instance.signInAnonymously();
  return value.user!;
}
