import 'package:json_annotation/json_annotation.dart';

import '../../common/common_dto.dart';

part 'profiles_dto.g.dart';

@JsonSerializable()
class ProfilesDto {
  @JsonKey(name: 'showCommon')
  ShowCommonDto showCommon;
  @JsonKey(name: 'interests', defaultValue: [])
  List<String>? interests; // Sở thích
  @JsonKey(name: 'orientationSexuals', defaultValue: [])
  List<String>? orientationSexuals; // Khuynh hướng giới tính
  @JsonKey(name: 'languages', defaultValue: [])
  List<String>? languages; // Ngôn ngữ tôi biết
  @JsonKey(name: 'ethnicitys', defaultValue: [])
  List<String>? ethnicitys;
  @JsonKey(name: 'smartPhoto', defaultValue: false)
  bool? smartPhoto;
  @JsonKey(name: 'favoriteSongs', defaultValue: [])
  List<String>? favoriteSongs; // Bài hát yêu thích
  @JsonKey(name: 'about', defaultValue: '')
  String? about; // Mô tả bản thân
  @JsonKey(name: 'gender')
  String? gender;
  @JsonKey(name: 'height', defaultValue: -1)
  double? height;
  @JsonKey(name: 'school', defaultValue: '')
  String? school;
  @JsonKey(name: 'company', defaultValue: '')
  String? company;
  @JsonKey(name: 'jobTitle', defaultValue: '')
  String? jobTitle;
  @JsonKey(name: 'datingPurpose', defaultValue: '')
  String? datingPurpose;
  @JsonKey(name: 'childrenPlan', defaultValue: '')
  String? childrenPlan;
  @JsonKey(name: 'zodiac', defaultValue: '')
  String? zodiac;
  @JsonKey(name: 'education', defaultValue: '')
  String? education;
  @JsonKey(name: 'familyPlan', defaultValue: '')
  String? familyPlan;
  @JsonKey(name: 'covidVaccine', defaultValue: '')
  String? covidVaccine;
  @JsonKey(name: 'communicationType', defaultValue: '')
  String? communicationType;
  @JsonKey(name: 'loveStyle', defaultValue: '')
  String? loveStyle;
  @JsonKey(name: 'pet', defaultValue: '')
  String? pet; // { type: String, index: true } // Vật nuôi
  @JsonKey(name: 'drinking', defaultValue: '')
  String? drinking; // { type: String, index: true } // Sở thích nhậu
  @JsonKey(name: 'smoking', defaultValue: '')
  String? smoking; // { type: String, index: true } // Hút thuốc
  @JsonKey(name: 'workout', defaultValue: '')
  String? workout;
  @JsonKey(name: 'dietaryPreference', defaultValue: '')
  String? dietaryPreference;
  @JsonKey(name: 'socialMedia', defaultValue: '')
  String? socialMedia;
  @JsonKey(name: 'sleepingHabit', defaultValue: '')
  String? sleepingHabit;
  @JsonKey(name: 'drug', defaultValue: '')
  String? drug;
  @JsonKey(name: 'address', defaultValue: '')
  String? address;
  @JsonKey(name: 'avatars', defaultValue: [])
  List<AvatarDto> avatars;
  @JsonKey(name: 'prompts', defaultValue: [])
  List<PromptDto>? prompts;
  @JsonKey(name: 'personality', defaultValue: '')
  String? personality;

  ProfilesDto(
      {required this.showCommon,
      this.interests,
      this.orientationSexuals,
      this.languages,
      this.ethnicitys,
      this.smartPhoto,
      this.favoriteSongs,
      this.about,
      this.gender,
      this.height,
      this.school,
      this.company,
      this.jobTitle,
      this.datingPurpose,
      this.childrenPlan,
      this.zodiac,
      this.education,
      this.familyPlan,
      this.covidVaccine,
      this.communicationType,
      this.loveStyle,
      this.pet,
      this.drinking,
      this.smoking,
      this.workout,
      this.dietaryPreference,
      this.socialMedia,
      this.sleepingHabit,
      this.drug,
      this.address,
      required this.avatars,
      this.prompts,
      this.personality})
      : super();

  factory ProfilesDto.fromJson(Map<String, dynamic> json) =>
      _$ProfilesDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProfilesDtoToJson(this);

  static ProfilesDto createEmptyProfile() {
    final common = ShowCommonDto();
    return ProfilesDto(
        showCommon: common,
        prompts: [],
        avatars: [],
        school: '',
        smartPhoto: false);
  }
}

@JsonSerializable()
class ShowCommonDto {
  // showSexual
  @JsonKey(name: 'showSexual', defaultValue: false)
  late bool showSexual;

  // Hiên thị giới tính
  @JsonKey(name: 'showGender', defaultValue: false)
  late bool showGender;

  // Hiển thị age
  @JsonKey(name: 'showAge', defaultValue: false)
  late bool showAge;

  // Hiển thị height
  @JsonKey(name: 'showHeight', defaultValue: false)
  late bool showHeight;

  // Hiển thị Ethnicity
  @JsonKey(name: 'showEthnicity', defaultValue: false)
  late bool showEthnicity;

  // Hiển thị Children Plan
  @JsonKey(name: 'showChildrenPlan', defaultValue: false)
  late bool showChildrenPlan;

  // Hiển thị Family plan
  @JsonKey(name: 'showFamilyPlan', defaultValue: false)
  late bool showFamilyPlan;

  // Hiển thị work
  @JsonKey(name: 'showWork', defaultValue: false)
  late bool showWork;

  // Hiển thị school
  @JsonKey(name: 'showSchool', defaultValue: false)
  late bool showSchool;

  // Hiển thị education
  @JsonKey(name: 'showEducation', defaultValue: false)
  late bool showEducation;

  // Hiển thị drink
  @JsonKey(name: 'showDrinking', defaultValue: false)
  late bool showDrinking;

  // Hiển thị smoking
  @JsonKey(name: 'showSmoking', defaultValue: false)
  late bool showSmoking;

  // Hiển thị Drug
  @JsonKey(name: 'showDrug', defaultValue: false)
  late bool showDrug;

  // Hiển th Distance
  @JsonKey(name: 'showDistance', defaultValue: false)
  late bool showDistance;

  ShowCommonDto(
      {this.showSexual = false,
      this.showGender = false,
      this.showAge = false,
      this.showHeight = false,
      this.showEthnicity = false,
      this.showChildrenPlan = false,
      this.showFamilyPlan = false,
      this.showWork = false,
      this.showSchool = false,
      this.showEducation = false,
      this.showDrinking = false,
      this.showSmoking = false,
      this.showDrug = false,
      this.showDistance = false})
      : super();

  factory ShowCommonDto.fromJson(Map<String, dynamic> json) =>
      _$ShowCommonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShowCommonDtoToJson(this);
}

// Image meta
@JsonSerializable()
class ImageMetaDto {
  // URL của ảnh
  @JsonKey(name: 'url')
  String url;

  // Danh sách các thumbnail của ảnh
  @JsonKey(name: 'thumbnails')
  List<String> thumbnails;

  ImageMetaDto({
    required this.url,
    required this.thumbnails,
  });

  factory ImageMetaDto.fromJson(Map<String, dynamic> json) =>
      _$ImageMetaDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ImageMetaDtoToJson(this);
}

// Avatar customer
@JsonSerializable()
class AvatarDto {
  // ID của ảnh đại diện
  @JsonKey(name: 'id')
  String? id;

  // Thông tin meta của ảnh
  @JsonKey(name: 'meta')
  ImageMetaDto meta;

  // Trạng thái duyệt của người kiểm duyệt
  @JsonKey(name: 'reviewerStatus', defaultValue: 0)
  int? reviewerStatus;

  // Thứ tự của ảnh
  @JsonKey(name: 'order', defaultValue: 0)
  int? order;

  // Bình luận của người kiểm duyệt
  @JsonKey(name: 'comment', defaultValue: '')
  String? comment;

  // Các tùy chọn vi phạm do người kiểm duyệt chọn
  @JsonKey(name: 'reviewerViolateOption', defaultValue: [])
  List<String> reviewerViolateOption;

  // Trạng thái AI
  @JsonKey(name: 'aiStatus', defaultValue: 0)
  int? aiStatus;

  // Các tùy chọn vi phạm do AI chọn
  @JsonKey(name: 'aiViolateOption', defaultValue: [])
  List<String> aiViolateOption;

  // Điểm số AI
  @JsonKey(name: 'aiPoint', defaultValue: 0)
  double? aiPoint;

  // Trạng thái xác minh của ảnh
  @JsonKey(name: 'isVerified', defaultValue: false)
  bool? isVerified;

  // Thông tin chèn thêm
  @JsonKey(name: 'insert')
  InsertDto? insert;

  AvatarDto(
      {required this.meta,
      this.id,
      this.reviewerStatus = 0,
      this.order = 0,
      this.comment = '',
      required this.reviewerViolateOption,
      this.aiStatus = 0,
      required this.aiViolateOption,
      this.aiPoint = 0,
      this.isVerified = false,
      this.insert})
      : super();

  factory AvatarDto.fromJson(Map<String, dynamic> json) =>
      _$AvatarDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarDtoToJson(this);
}

// Prompt customer
@JsonSerializable()
class PromptDto {
  // Mã của prompt
  @JsonKey(name: 'codePrompt')
  String codePrompt;

  // Câu trả lời cho prompt
  @JsonKey(name: 'answer')
  String answer;

  // ID của prompt
  @JsonKey(name: 'id', defaultValue: '')
  String id;

  // Thứ tự của prompt
  @JsonKey(name: 'order')
  int? order;

  // Thông tin chèn thêm
  @JsonKey(name: 'insert')
  InsertDto? insert;

  PromptDto({
    required this.codePrompt,
    required this.answer,
    this.id = '',
    this.order,
    this.insert,
  });

  factory PromptDto.fromJson(Map<String, dynamic> json) =>
      _$PromptDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PromptDtoToJson(this);
}
