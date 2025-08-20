import 'package:get_it/get_it.dart';
import 'package:rr/data/auth/auth_api.dart';
import 'package:rr/data/auth/auth_repository_impl.dart';
import 'package:rr/data/auth/i_auth_api.dart';
import 'package:rr/data/core/secure_storage/i_secure_storage_service.dart';
import 'package:rr/data/core/secure_storage/secure_storage_service.dart';

final locator = GetIt.instance;

Future<void> initDependencies() async {
  await _initDatasources();
  await _initRepositories();
  await _initCubits();
}

Future<void> _initDatasources() async {
  locator.registerLazySingleton<MockAuthApiService>(
    () => MockAuthApiService(),
  );
  locator.registerLazySingleton<SecureStorageService>(
    () => SecureStorageService(),
  );
}

Future<void> _initRepositories() async {
  locator.registerLazySingleton<AuthRepositoryImpl>(
    () => AuthRepositoryImpl(
      locator<AuthApi>(),
      locator<ISecureStorageService>(),
    ),
  );
}

Future<void> _initCubits() async {}
