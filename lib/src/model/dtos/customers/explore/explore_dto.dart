import 'package:json_annotation/json_annotation.dart';

part 'explore_dto.g.dart';

@JsonSerializable()
class ExploreDto {
  // Trạng thái xác minh
  @JsonKey(name: 'verified', defaultValue: 0)
  int verified;

  // Danh sách các chủ đề
  @JsonKey(name: 'topics', defaultValue: [])
  final List<String> topics;

  ExploreDto({required this.verified, required this.topics});

  factory ExploreDto.fromJson(Map<String, dynamic> json) => _$ExploreDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ExploreDtoToJson(this);
}


@JsonSerializable()
class PlusCtrlDto {
  // Ai bạn sẽ thấy
  @JsonKey(name: 'whoYouSee')
  String whoYouSee;

  // Ai sẽ thấy bạn
  @JsonKey(name: 'whoSeeYou')
  String whoSeeYou;

  PlusCtrlDto({
    required this.whoYouSee,
    required this.whoSeeYou,
  });

  factory PlusCtrlDto.fromJson(Map<String, dynamic> json) => _$PlusCtrlDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlusCtrlDtoToJson(this);
}
