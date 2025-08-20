import 'package:rr/data/models/responses/auth_response.dart';
import 'package:rr/data/models/base_response.dart';
import 'package:rr/data/models/responses/user_info_response.dart';

abstract class AuthApi {
  Future<BaseResponse<AuthResponse>> login(
    String email,
    String password,
  );
  Future<void> logout();

  Future<BaseResponse<UserInfoResponse>> getUserInfo(
    String accessToken,
  );
}
