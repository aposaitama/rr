import 'package:rr/data/models/responses/auth_response.dart';
import 'package:rr/data/models/base_response.dart';

import '../../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;
  LoginUseCase(this.repository);

  Future<BaseResponse<AuthResponse>> call(String email, String password) =>
      repository.login(
        email,
        password,
      );
}
