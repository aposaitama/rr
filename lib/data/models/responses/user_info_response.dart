import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rr/data/models/user/user.dart';

part 'user_info_response.freezed.dart';
part 'user_info_response.g.dart';

@freezed
sealed class UserInfoResponse with _$UserInfoResponse {
  const factory UserInfoResponse({
    User? user,
  }) = _UserInfoResponse;

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseFromJson(json);
}
