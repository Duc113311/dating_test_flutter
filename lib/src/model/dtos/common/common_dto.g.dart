// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertDto _$InsertDtoFromJson(Map<String, dynamic> json) => InsertDto(
      when: (json['when'] as num).toInt(),
      by: json['by'] as String?,
    );

Map<String, dynamic> _$InsertDtoToJson(InsertDto instance) => <String, dynamic>{
      'when': instance.when,
      'by': instance.by,
    };
