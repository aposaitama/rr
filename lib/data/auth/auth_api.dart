import 'package:rr/data/auth/i_auth_api.dart';
import 'package:rr/data/models/auth_response.dart';
import 'package:rr/data/models/base_response.dart';

class MockAuthApiService implements AuthApi {
  @override
  Future<BaseResponse<AuthResponse>> login(
    String email,
    String password,
  ) async {
    await Future.delayed(
      const Duration(
        seconds: 1,
      ),
    );
    if (email == 'test@example.com' && password == '123456') {
      return BaseResponse(
        data: AuthResponse(
          accessToken: 'mock_token_abc123',
          userName: 'RRTest',
        ),
        success: true,
      );
    } else {
      throw Exception(
        'Invalid credentials',
      );
    }
  }

  @override
  Future<void> logout() async {
    await Future.delayed(
      const Duration(
        milliseconds: 500,
      ),
    );
  }
}
