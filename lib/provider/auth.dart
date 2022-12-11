import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';

final firebaseCurrentUserProvider = FutureProvider((ref) async {
  final waitForFirebaseAuthSetup = Future<void>(() {
    final completer = Completer<void>();

    StreamSubscription<User?>? subscription;
    subscription = FirebaseAuth.instance.userChanges().listen((firebaseUser) {
      completer.complete();
      subscription?.cancel();
    });
    return completer.future;
  });
  await waitForFirebaseAuthSetup;

  return FirebaseAuth.instance.currentUser;
});
