import 'package:rr/data/auth/i_auth_api.dart';
import 'package:rr/data/models/base_response.dart';
import 'package:rr/data/models/responses/auth_response.dart';
import 'package:rr/data/models/responses/user_info_response.dart';
import 'package:rr/data/models/user/user.dart';

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
    if (email == '1@test.com' && password == '111111') {
      final responseExmpl = BaseResponse(
        data: AuthResponse(
          accessToken: 'accessToken121212121',
          user: User(
            userName: 'qqq',
            id: 1,
          ),
        ),
        success: true,
      );

      return responseExmpl;
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

  @override
  Future<BaseResponse<UserInfoResponse>> getUserInfo(
    String accessToken,
  ) async {
    await Future.delayed(
      const Duration(
        milliseconds: 500,
      ),
    );
    return BaseResponse(
      data: UserInfoResponse(
        user: User(
          id: 1,
          userName: 'qqq',
        ),
      ),
      success: true,
    );
  }
}
