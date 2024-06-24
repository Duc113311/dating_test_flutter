import 'package:json_annotation/json_annotation.dart';

part 'setting_dto.g.dart';

@JsonSerializable()
class SettingDto {
  // Global
  @JsonKey(name: 'global')
  GlobalDto? global; // Toàn cầu
  // Distance
  @JsonKey(name: 'distancePreference')
  DistancePreferenceDto? distancePreference; // Khoảng cách ưu tiên
  // Age
  @JsonKey(name: 'agePreference')
  AgePreferenceDto? agePreference; // Độ tuổi ưu tiên
  // Notification email
  @JsonKey(name: 'notiSeenEmail')
  NotiSeenEmailDto? notiSeenEmail;
  // Notification app
  @JsonKey(name: 'notiSeenApp')
  NotiSeenAppDto? notiSeenApp;
  // Gender filter
  @JsonKey(name: 'genderFilter')
  String? genderFilter;
  // Auto play
  @JsonKey(name: 'autoPlayVideo', defaultValue: 'always')
  String? autoPlayVideo;
  // Show topic
  @JsonKey(name: 'showTopPick', defaultValue: true)
  bool? showTopPick;
  // Hiển thị trạng thi hoạt động
  @JsonKey(name: 'showOnlineStatus', defaultValue: true)
  bool? showOnlineStatus;
  // Active account
  @JsonKey(name: 'showActiveStatus', defaultValue: true)
  bool? showActiveStatus;
  // incognitoMode
  @JsonKey(name: 'incognitoMode', defaultValue: false)
  bool? incognitoMode;

  SettingDto({
    this.global,
    this.distancePreference,
    this.agePreference,
    this.notiSeenEmail,
    this.notiSeenApp,
    this.genderFilter,
    this.autoPlayVideo,
    this.showTopPick,
    this.showOnlineStatus,
    this.showActiveStatus,
    this.incognitoMode,
  });

  factory SettingDto.fromJson(Map<String, dynamic> json) => _$SettingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SettingDtoToJson(this);
}

// Distance Dto
@JsonSerializable()
class DistancePreferenceDto {
  // Rang
  @JsonKey(name: 'range', defaultValue: 10)
  int? range;

  // unit
  @JsonKey(name: 'unit', defaultValue: 'km')
  String? unit;

  // Hiển thị hay không
  @JsonKey(name: 'onlyShowInThis', defaultValue: false)
  bool? onlyShowInThis;

  DistancePreferenceDto({
    this.range,
    this.unit,
    this.onlyShowInThis,
  }) : super();

  factory DistancePreferenceDto.fromJson(Map<String, dynamic> json) =>
      _$DistancePreferenceDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DistancePreferenceDtoToJson(this);
}

// Global Dto
@JsonSerializable()
class GlobalDto {
  // languages
  @JsonKey(name: 'languages')
  List<String> languages;

  // isEnabled
  @JsonKey(name: 'isEnabled')
  bool isEnabled;

  // Object Dto
  GlobalDto({required this.languages, required this.isEnabled}) : super();

  factory GlobalDto.fromJson(Map<String, dynamic> json) =>
      _$GlobalDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GlobalDtoToJson(this);
}

// Age
@JsonSerializable()
class AgePreferenceDto {
  // min
  @JsonKey(name: 'min', defaultValue: 15)
  int? min;

  // max
  @JsonKey(name: 'max', defaultValue: 70)
  int? max;

  // Show on/off
  @JsonKey(name: 'onlyShowInThis', defaultValue: false)
  bool? onlyShowInThis;

  AgePreferenceDto({
    this.min,
    this.max,
    this.onlyShowInThis,
  }) : super();

  factory AgePreferenceDto.fromJson(Map<String, dynamic> json) =>
      _$AgePreferenceDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AgePreferenceDtoToJson(this);
}

// Notification email
@JsonSerializable()
class NotiSeenEmailDto {

  // New match
  @JsonKey(name: 'newMatchs', defaultValue: false)
  bool newMatchs;

  // message
  @JsonKey(name: 'incomingMessage', defaultValue: false)
  bool incomingMessage;

  // Khuyến mại app
  @JsonKey(name: 'promotions', defaultValue: false)
  bool promotions;


  NotiSeenEmailDto({
    required this.newMatchs,
    required this.incomingMessage,
    required this.promotions,
  }) : super();

  factory NotiSeenEmailDto.fromJson(Map<String, dynamic> json) =>
      _$NotiSeenEmailDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotiSeenEmailDtoToJson(this);
}

// Notification app
@JsonSerializable()
class NotiSeenAppDto {
  // New match
  @JsonKey(name: 'newMatchs', defaultValue: false)
  bool newMatchs;
  // massage
  @JsonKey(name: 'incomingMessage', defaultValue: false)
  bool incomingMessage;
  // Khuyến mại app
  @JsonKey(name: 'promotions', defaultValue: false)
  bool promotions;
  // Supper like
  @JsonKey(name: 'superLike', defaultValue: false)
  bool superLike;


  NotiSeenAppDto({
    required this.newMatchs,
    required this.incomingMessage,
    required this.promotions,
    required this.superLike
  }) : super();

  factory NotiSeenAppDto.fromJson(Map<String, dynamic> json) =>
      _$NotiSeenAppDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotiSeenAppDtoToJson(this);
}