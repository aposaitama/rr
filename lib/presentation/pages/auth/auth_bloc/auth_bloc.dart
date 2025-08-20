import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rr/data/models/user/user.dart';
import 'package:rr/domain/auth/usecases/auth_usecases/login_usecase.dart';
import 'package:rr/domain/auth/usecases/auth_usecases/logout_usecase.dart';
import 'package:rr/domain/auth/usecases/secure_storage_usecases/get_access_token_usecase.dart';
import 'package:rr/domain/auth/usecases/user_usecases/get_user_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final LoginUseCase _loginUsecase;
  final LogoutUseCase _logoutUsecase;
  final GetTokenUseCase _getTokenUsecase;
  final GetUserUsecase _getUserUsecase;

  AuthBloc(
    this._loginUsecase,
    this._logoutUsecase,
    this._getTokenUsecase,
    this._getUserUsecase,
  ) : super(
          AuthBlocState(),
        ) {
    on<Init>(
      _init,
    );

    on<Login>(
      _login,
    );
    on<Logout>(
      _logout,
    );
  }

  Future<void> _init(
    Init event,
    Emitter<AuthBlocState> emit,
  ) async {
    final token = await _getTokenUsecase();
    if (token != null) {
      final userInfo = await _getUserUsecase(
        token,
      );
      if (userInfo.data.user?.userName?.isNotEmpty ?? false) {
        emit(
          state.copyWith(
            user: userInfo.data.user,
          ),
        );
      }
      emit(
        state.copyWith(
          status: AuthenticationStatus.authenticated,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: AuthenticationStatus.notAuthenticated,
        ),
      );
    }
  }

  Future<void> _login(
    Login event,
    Emitter<AuthBlocState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: AuthenticationStatus.loading,
        ),
      );
      final response = await _loginUsecase.call(
        event.email,
        event.password,
      );

      if (response.data.accessToken!.isNotEmpty) {
        emit(
          state.copyWith(
            user: response.data.user,
            status: AuthenticationStatus.authenticated,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: AuthenticationStatus.failed,
        ),
      );
      emit(
        state.copyWith(
          errorMessage: '',
        ),
      );
    }
  }

  Future<void> _logout(
    Logout event,
    Emitter<AuthBlocState> emit,
  ) async {
    try {
      await _logoutUsecase.call();
      emit(
        state.copyWith(
          status: AuthenticationStatus.notAuthenticated,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
        ),
      );
      emit(
        state.copyWith(
          errorMessage: '',
        ),
      );
    }
  }
}
