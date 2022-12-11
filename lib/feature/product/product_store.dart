import 'dart:async';

import 'package:app_review/app_review.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:nererun/analytics.dart';
import 'package:nererun/datastore/user.dart';
import 'package:nererun/entity/off_timer_type.dart';
import 'package:nererun/entity/product.dart';
import 'package:nererun/feature/product/product_state.dart';
import 'package:riverpod/riverpod.dart';

final productStoreProvider = StateNotifierProvider.family
    .autoDispose<ProductStore, ProductState, Product>(
  (ref, product) => ProductStore(
    product,
    ref.watch(userDatastoreProvider),
  ),
);

class ProductStore extends StateNotifier<ProductState> {
  final Product product;
  final UserDatastore _userDatastore;
  final _player = AssetsAudioPlayer.newPlayer();
  final List<StreamSubscription> _subscriptions = [];

  ProductStore(
    this.product,
    this._userDatastore,
  ) : super(
          ProductState(
            startDateTime: DateTime.now(),
          ),
        ) {
    setUp();
  }

  void setUp() {
    _load();
    _subscription();
  }

  void _subscription() {
    _subscriptions.add(_player.current.listen((event) {
      state = state.copyWith(duration: event?.audio.duration);
    }));
    _subscriptions.add(_player.currentPosition.listen((event) {
      state = state.copyWith(currentPosition: event);
      _autoPause();
    }));
  }

  void _load() async {
    final audio = Audio.network(
      product.audioUrl,
      metas: Metas(
        title: product.title,
        image: MetasImage.network(product.thumbnailImageUrl),
      ),
    );
    await _player.open(
      audio,
      volume: 1.0,
      loopMode: LoopMode.single,
      autoStart: false,
      showNotification: true,
    );
    play();
  }

  void play() {
    _reset();
    _player.play();
    analytics.logEvent(
      'tap_play',
      product: product,
    );
  }

  void pause() {
    _player.pause();
    analytics.logEvent(
      'tap_pause',
      product: product,
    );
  }

  void seekBy(Duration duration) {
    _player.seekBy(duration);
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
    print('dispose');
  }

  PlayerBuilder builderIsPlaying({
    required PlayingWidgetBuilder builder,
  }) {
    return _player.builderIsPlaying(builder: builder);
  }

  Future<void> reviewRequest() async {
    AppReview.requestReview.then((value) {
      print('AppReview.requestReview(then) : $value');
    });
  }

  void _reset() async {
    state = state.copyWith(startDateTime: DateTime.now());
    final user = await _userDatastore.fetch();
    DateTime? offDateTime;
    if (user.offTimerType != OffTimerType.off) {
      offDateTime = state.startDateTime.add(user.offTimerType.durationPeriod);
    }
    state = state.copyWith(
      offTimerType: user.offTimerType,
      offDateTime: offDateTime,
    );
    print('startDateTime : ${state.startDateTime}');
    print('offDateTime : ${state.offDateTime}');
  }

  void _autoPause() {
    final now = DateTime.now();
    final result = state.offDateTime?.isBefore(now);
    if (result == true) {
      pause();
      analytics.logEvent(
        'auto_pause',
        product: product,
        offTimerType: state.offTimerType,
      );
    }
  }
}
