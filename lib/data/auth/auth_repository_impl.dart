import 'package:rr/data/auth/i_auth_api.dart';
import 'package:rr/data/core/secure_storage/i_secure_storage_service.dart';
import 'package:rr/data/models/base_response.dart';
import 'package:rr/data/models/responses/auth_response.dart';
import 'package:rr/data/models/responses/user_info_response.dart';

import '../../../domain/auth/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi api;
  final ISecureStorageService storage;

  AuthRepositoryImpl(this.api, this.storage);

  @override
  Future<BaseResponse<AuthResponse>> login(
      String email, String password) async {
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
    return res;
  }

  @override
  Future<void> logout() async {
    await api.logout();
    await storage.deleteToken();
  }

  @override
  Future<BaseResponse<UserInfoResponse>> getUserInfo(
    String accessToken,
  ) async {
    return await api.getUserInfo(
      accessToken,
    );
  }
}
