import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
sealed class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    String? userName,
    String? accessToken,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
