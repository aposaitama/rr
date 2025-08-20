// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfoResponse {
  User? get user;

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserInfoResponseCopyWith<UserInfoResponse> get copyWith =>
      _$UserInfoResponseCopyWithImpl<UserInfoResponse>(
          this as UserInfoResponse, _$identity);

  /// Serializes this UserInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserInfoResponse &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserInfoResponse(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserInfoResponseCopyWith<$Res> {
  factory $UserInfoResponseCopyWith(
          UserInfoResponse value, $Res Function(UserInfoResponse) _then) =
      _$UserInfoResponseCopyWithImpl;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserInfoResponseCopyWithImpl<$Res>
    implements $UserInfoResponseCopyWith<$Res> {
  _$UserInfoResponseCopyWithImpl(this._self, this._then);

  final UserInfoResponse _self;
  final $Res Function(UserInfoResponse) _then;

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of UserInfoResponse
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

/// Adds pattern-matching-related methods to [UserInfoResponse].
extension UserInfoResponsePatterns on UserInfoResponse {
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
    TResult Function(_UserInfoResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserInfoResponse() when $default != null:
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
    TResult Function(_UserInfoResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserInfoResponse():
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
    TResult? Function(_UserInfoResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserInfoResponse() when $default != null:
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
    TResult Function(User? user)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserInfoResponse() when $default != null:
        return $default(_that.user);
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
    TResult Function(User? user) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserInfoResponse():
        return $default(_that.user);
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
    TResult? Function(User? user)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserInfoResponse() when $default != null:
        return $default(_that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserInfoResponse implements UserInfoResponse {
  const _UserInfoResponse({this.user});
  factory _UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseFromJson(json);

  @override
  final User? user;

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserInfoResponseCopyWith<_UserInfoResponse> get copyWith =>
      __$UserInfoResponseCopyWithImpl<_UserInfoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserInfoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfoResponse &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserInfoResponse(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$UserInfoResponseCopyWith<$Res>
    implements $UserInfoResponseCopyWith<$Res> {
  factory _$UserInfoResponseCopyWith(
          _UserInfoResponse value, $Res Function(_UserInfoResponse) _then) =
      __$UserInfoResponseCopyWithImpl;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserInfoResponseCopyWithImpl<$Res>
    implements _$UserInfoResponseCopyWith<$Res> {
  __$UserInfoResponseCopyWithImpl(this._self, this._then);

  final _UserInfoResponse _self;
  final $Res Function(_UserInfoResponse) _then;

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UserInfoResponse(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of UserInfoResponse
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
