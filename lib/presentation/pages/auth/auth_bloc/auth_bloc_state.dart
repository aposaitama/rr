part of 'auth_bloc.dart';

enum AuthenticationStatus {
  unknown,
  notAuthenticated,
  authenticated,
  failed,
  loading,
}

extension AuthenticationStatusX on AuthenticationStatus {
  bool get isNotAuthenticated => this == AuthenticationStatus.notAuthenticated;
  bool get isAuthenticated => this == AuthenticationStatus.authenticated;
  bool get isFailed => this == AuthenticationStatus.failed;
  bool get isLoading => this == AuthenticationStatus.loading;
}

@freezed
sealed class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus status,
    User? user,
    String? errorMessage,
  }) = _AuthBlocState;
}
