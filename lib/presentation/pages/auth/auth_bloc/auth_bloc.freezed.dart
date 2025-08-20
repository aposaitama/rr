// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthBlocEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthBlocEvent()';
  }
}

/// @nodoc
class $AuthBlocEventCopyWith<$Res> {
  $AuthBlocEventCopyWith(AuthBlocEvent _, $Res Function(AuthBlocEvent) __);
}

/// Adds pattern-matching-related methods to [AuthBlocEvent].
extension AuthBlocEventPatterns on AuthBlocEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Init() when init != null:
        return init(_that);
      case Login() when login != null:
        return login(_that);
      case Logout() when logout != null:
        return logout(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
  }) {
    final _that = this;
    switch (_that) {
      case Init():
        return init(_that);
      case Login():
        return login(_that);
      case Logout():
        return logout(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
  }) {
    final _that = this;
    switch (_that) {
      case Init() when init != null:
        return init(_that);
      case Login() when login != null:
        return login(_that);
      case Logout() when logout != null:
        return logout(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Init() when init != null:
        return init();
      case Login() when login != null:
        return login(_that.email, _that.password);
      case Logout() when logout != null:
        return logout();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
  }) {
    final _that = this;
    switch (_that) {
      case Init():
        return init();
      case Login():
        return login(_that.email, _that.password);
      case Logout():
        return logout();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
  }) {
    final _that = this;
    switch (_that) {
      case Init() when init != null:
        return init();
      case Login() when login != null:
        return login(_that.email, _that.password);
      case Logout() when logout != null:
        return logout();
      case _:
        return null;
    }
  }
}

/// @nodoc

class Init implements AuthBlocEvent {
  const Init();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthBlocEvent.init()';
  }
}

/// @nodoc

class Login implements AuthBlocEvent {
  const Login(this.email, this.password);

  final String email;
  final String password;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginCopyWith<Login> get copyWith =>
      _$LoginCopyWithImpl<Login>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'AuthBlocEvent.login(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginCopyWith<$Res>
    implements $AuthBlocEventCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) _then) =
      _$LoginCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._self, this._then);

  final Login _self;
  final $Res Function(Login) _then;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(Login(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class Logout implements AuthBlocEvent {
  const Logout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthBlocEvent.logout()';
  }
}

/// @nodoc
mixin _$AuthBlocState {
  AuthenticationStatus get status;
  User? get user;
  String? get errorMessage;

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthBlocStateCopyWith<AuthBlocState> get copyWith =>
      _$AuthBlocStateCopyWithImpl<AuthBlocState>(
          this as AuthBlocState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthBlocState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user, errorMessage);

  @override
  String toString() {
    return 'AuthBlocState(status: $status, user: $user, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $AuthBlocStateCopyWith<$Res> {
  factory $AuthBlocStateCopyWith(
          AuthBlocState value, $Res Function(AuthBlocState) _then) =
      _$AuthBlocStateCopyWithImpl;
  @useResult
  $Res call({AuthenticationStatus status, User? user, String? errorMessage});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthBlocStateCopyWithImpl<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  _$AuthBlocStateCopyWithImpl(this._self, this._then);

  final AuthBlocState _self;
  final $Res Function(AuthBlocState) _then;

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AuthBlocState].
extension AuthBlocStatePatterns on AuthBlocState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthBlocState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthBlocState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthBlocState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthBlocState():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthBlocState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthBlocState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AuthenticationStatus status, User? user, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthBlocState() when $default != null:
        return $default(_that.status, _that.user, _that.errorMessage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AuthenticationStatus status, User? user, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthBlocState():
        return $default(_that.status, _that.user, _that.errorMessage);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            AuthenticationStatus status, User? user, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthBlocState() when $default != null:
        return $default(_that.status, _that.user, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthBlocState implements AuthBlocState {
  const _AuthBlocState(
      {this.status = AuthenticationStatus.unknown,
      this.user,
      this.errorMessage});

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  final User? user;
  @override
  final String? errorMessage;

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthBlocStateCopyWith<_AuthBlocState> get copyWith =>
      __$AuthBlocStateCopyWithImpl<_AuthBlocState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthBlocState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user, errorMessage);

  @override
  String toString() {
    return 'AuthBlocState(status: $status, user: $user, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$AuthBlocStateCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$AuthBlocStateCopyWith(
          _AuthBlocState value, $Res Function(_AuthBlocState) _then) =
      __$AuthBlocStateCopyWithImpl;
  @override
  @useResult
  $Res call({AuthenticationStatus status, User? user, String? errorMessage});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$AuthBlocStateCopyWithImpl<$Res>
    implements _$AuthBlocStateCopyWith<$Res> {
  __$AuthBlocStateCopyWithImpl(this._self, this._then);

  final _AuthBlocState _self;
  final $Res Function(_AuthBlocState) _then;

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_AuthBlocState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
