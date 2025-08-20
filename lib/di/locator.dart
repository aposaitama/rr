import 'package:get_it/get_it.dart';
import 'package:rr/data/auth/auth_api.dart';
import 'package:rr/data/auth/auth_repository_impl.dart';
import 'package:rr/data/auth/i_auth_api.dart';
import 'package:rr/data/core/secure_storage/i_secure_storage_service.dart';
import 'package:rr/data/core/secure_storage/secure_storage_service.dart';
import 'package:rr/domain/auth/repositories/auth_repository.dart';
import 'package:rr/domain/auth/usecases/auth_usecases/login_usecase.dart';
import 'package:rr/domain/auth/usecases/auth_usecases/logout_usecase.dart';
import 'package:rr/domain/auth/usecases/secure_storage_usecases/get_access_token_usecase.dart';
import 'package:rr/domain/auth/usecases/user_usecases/get_user_usecase.dart';
import 'package:rr/presentation/pages/auth/auth_bloc/auth_bloc.dart';

final locator = GetIt.instance;

Future<void> initDependencies() async {
  await _initDatasources();
  await _initRepositories();
  await _initUsecases();
  await _initBloc();
}

Future<void> _initDatasources() async {
  locator.registerLazySingleton<AuthApi>(
    () => MockAuthApiService(),
  );
  locator.registerLazySingleton<ISecureStorageService>(
    () => SecureStorageService(),
  );
}

Future<void> _initRepositories() async {
  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      locator<AuthApi>(),
      locator<ISecureStorageService>(),
    ),
  );
}

Future<void> _initUsecases() async {
  locator.registerLazySingleton<GetTokenUseCase>(
    () => GetTokenUseCase(
      locator<ISecureStorageService>(),
    ),
  );
  locator.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(
      locator<AuthRepository>(),
    ),
  );
  locator.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(
      locator<AuthRepository>(),
    ),
  );
  locator.registerLazySingleton<GetUserUsecase>(
    () => GetUserUsecase(
      locator<AuthRepository>(),
    ),
  );
}

Future<void> _initBloc() async {
  locator.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      locator<LoginUseCase>(),
      locator<LogoutUseCase>(),
      locator<GetTokenUseCase>(),
      locator<GetUserUsecase>(),
    ),
  );
}
