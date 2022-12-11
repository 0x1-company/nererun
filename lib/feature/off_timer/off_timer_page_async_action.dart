import 'package:nererun/datastore/user.dart';
import 'package:nererun/entity/off_timer_type.dart';
import 'package:riverpod/riverpod.dart';

final offTimerAsyncActionProvider = Provider(
  (ref) => OffTimerAsyncAction(
    ref.watch(userDatastoreProvider),
  ),
);

class OffTimerAsyncAction {
  final UserDatastore _userDatastore;

  OffTimerAsyncAction(this._userDatastore);

  Future<void> edit(OffTimerType offTimerType) {
    return _userDatastore.updateOffTimerType(offTimerType);
  }
}
