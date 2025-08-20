import 'package:rr/data/models/auth_response.dart';
import 'package:rr/data/models/base_response.dart';

abstract class AuthApi {
  Future<BaseResponse<AuthResponse>> login(
    String email,
    String password,
  );
  Future<void> logout();
}
