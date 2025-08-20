import 'package:rr/data/auth/i_auth_api.dart';
import 'package:rr/data/core/secure_storage/i_secure_storage_service.dart';

import '../../../domain/auth/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi api;
  final ISecureStorageService storage;

  AuthRepositoryImpl(this.api, this.storage);

  @override
  Future<void> login(String email, String password) async {
    final res = await api.login(
      email,
      password,
    );
    if (res.success) {
      if (res.data.accessToken!.isNotEmpty) {
        await storage.saveToken(
          res.data.accessToken!,
        );
      }
    }
  }

  @override
  Future<void> logout() async {
    await api.logout();
    await storage.deleteToken();
  }
}
