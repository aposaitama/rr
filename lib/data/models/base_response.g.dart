// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _BaseResponse<T>(
      data: fromJsonT(json['data']),
      success: json['success'] as bool,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$BaseResponseToJson<T>(
  _BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'success': instance.success,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
