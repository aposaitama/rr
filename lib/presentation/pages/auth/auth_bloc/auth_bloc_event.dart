part of 'auth_bloc.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const factory AuthBlocEvent.init() = Init;
  const factory AuthBlocEvent.login(
    String email,
    String password,
  ) = Login;
  const factory AuthBlocEvent.logout() = Logout;
}
