import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:nererun/components/scaffold_indicator.dart';
import 'package:nererun/database/database.dart';
import 'package:nererun/datastore/user.dart';
import 'package:nererun/entity/config.dart';
import 'package:nererun/feature/force_update/force_update.dart';
import 'package:nererun/feature/home/home.dart';
import 'package:nererun/service/auth.dart';
import 'package:nererun/util/version/version.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  bool? isForceUpdate;

  @override
  void initState() {
    _auth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return ref.watch(authStateStreamProvider).when(
            data: (_) {
              if (isForceUpdate == true) {
                return const ForceUpdate();
              } else if (isForceUpdate == false) {
                return const HomeScreen();
              } else {
                return const ScaffoldIndicator();
              }
            },
            error: (error, stack) {
              print(error);
              return Container();
            },
            loading: () => const ScaffoldIndicator(),
          );
    });
  }

  _auth() async {
    try {
      final firebaseUser = await _signIn();

      final database = DatabaseConnection(firebaseUser.uid);
      final userDatastore = UserDatastore(database);
      await userDatastore.fetchOrCreate(firebaseUser.uid);

      final forceUpdate = await _checkForceUpdate();
      setState(() {
        isForceUpdate = forceUpdate;
      });
    } catch (e) {
      print(e);
    }
  }

  Future<bool> _checkForceUpdate() async {
    final document =
        await FirebaseFirestore.instance.doc('/globals/config').get();
    final config = Config.fromJson(document.data() as Map<String, dynamic>);
    final packageVersion = await Version.fromPackage();

    final forceUpdate = packageVersion
        .isLessThan(Version.parse(config.minimumSupportedAppVersion));
    return forceUpdate;
  }

  Future<firebase_auth.User> _signIn() async {
    final firebaseUser = await callSignin();

    unawaited(FirebaseCrashlytics.instance.setUserIdentifier(firebaseUser.uid));

    return firebaseUser;
  }
}
