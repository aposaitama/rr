// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoResponse _$UserInfoResponseFromJson(Map<String, dynamic> json) =>
    _UserInfoResponse(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserInfoResponseToJson(_UserInfoResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
