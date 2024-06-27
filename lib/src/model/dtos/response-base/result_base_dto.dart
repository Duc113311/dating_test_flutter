import 'package:json_annotation/json_annotation.dart';

part 'result_base_dto.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ResultBaseDto<T> {
  @JsonKey(name: 'msgKey')
  String msgKey;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  T? data;

  ResultBaseDto({required this.msgKey, required this.message, this.data});

  factory ResultBaseDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResultBaseDtoFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ResultBaseDtoToJson(this, toJsonT);
}
