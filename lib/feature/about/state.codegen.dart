import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nererun/util/version/version.dart';
import 'package:riverpod/riverpod.dart';

part 'state.codegen.freezed.dart';

@freezed
class AboutState with _$AboutState {
  factory AboutState({
    required Version packageVersion,
  }) = _AboutState;
  AboutState._();
}

final packageVersionProvider = FutureProvider((ref) async {
  return await Version.fromPackage();
});

final aboutAsyncStateProvider =
    Provider.autoDispose<AsyncValue<AboutState>>((ref) {
  final packageVersion = ref.watch(packageVersionProvider);

  if (packageVersion is AsyncLoading) return const AsyncLoading();

  final packageVersionValue = packageVersion.value;
  if (packageVersionValue == null) return const AsyncLoading();

  return AsyncValue.data(AboutState(
    packageVersion: packageVersionValue,
  ));
});
