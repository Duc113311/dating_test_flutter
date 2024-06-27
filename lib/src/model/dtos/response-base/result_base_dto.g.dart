// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_base_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultBaseDto<T> _$ResultBaseDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResultBaseDto<T>(
      msgKey: json['msgKey'] as String,
      message: json['message'] as String,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$ResultBaseDtoToJson<T>(
  ResultBaseDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'msgKey': instance.msgKey,
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
