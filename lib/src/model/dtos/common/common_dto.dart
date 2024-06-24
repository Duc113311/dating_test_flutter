
import 'package:json_annotation/json_annotation.dart';
part 'common_dto.g.dart';

@JsonSerializable()
class InsertDto {
  // Thời gian chèn
  @JsonKey(name: 'when')
  int when;

  // Người chèn
  @JsonKey(name: 'by')
  String? by;

  InsertDto({
    required this.when,
    this.by,
  });

  factory InsertDto.fromJson(Map<String, dynamic> json) => _$InsertDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InsertDtoToJson(this);
}