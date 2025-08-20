import 'package:rr/data/models/base_response.dart';
import 'package:rr/data/models/responses/user_info_response.dart';
import 'package:rr/domain/auth/repositories/auth_repository.dart';

class GetUserUsecase {
  final AuthRepository repository;
  GetUserUsecase(this.repository);

  Future<BaseResponse<UserInfoResponse>> call(String accessToken) =>
      repository.getUserInfo(
        accessToken,
      );
}
