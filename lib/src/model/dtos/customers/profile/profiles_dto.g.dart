// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profiles_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfilesDto _$ProfilesDtoFromJson(Map<String, dynamic> json) => ProfilesDto(
      showCommon:
          ShowCommonDto.fromJson(json['showCommon'] as Map<String, dynamic>),
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      orientationSexuals: (json['orientationSexuals'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      ethnicitys: (json['ethnicitys'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      smartPhoto: json['smartPhoto'] as bool? ?? false,
      favoriteSongs: (json['favoriteSongs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      about: json['about'] as String? ?? '',
      gender: json['gender'] as String?,
      height: (json['height'] as num?)?.toDouble() ?? -1,
      school: json['school'] as String? ?? '',
      company: json['company'] as String? ?? '',
      jobTitle: json['jobTitle'] as String? ?? '',
      datingPurpose: json['datingPurpose'] as String? ?? '',
      childrenPlan: json['childrenPlan'] as String? ?? '',
      zodiac: json['zodiac'] as String? ?? '',
      education: json['education'] as String? ?? '',
      familyPlan: json['familyPlan'] as String? ?? '',
      covidVaccine: json['covidVaccine'] as String? ?? '',
      communicationType: json['communicationType'] as String? ?? '',
      loveStyle: json['loveStyle'] as String? ?? '',
      pet: json['pet'] as String? ?? '',
      drinking: json['drinking'] as String? ?? '',
      smoking: json['smoking'] as String? ?? '',
      workout: json['workout'] as String? ?? '',
      dietaryPreference: json['dietaryPreference'] as String? ?? '',
      socialMedia: json['socialMedia'] as String? ?? '',
      sleepingHabit: json['sleepingHabit'] as String? ?? '',
      drug: json['drug'] as String? ?? '',
      address: json['address'] as String? ?? '',
      avatars: (json['avatars'] as List<dynamic>?)
              ?.map((e) => AvatarDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      prompts: (json['prompts'] as List<dynamic>?)
              ?.map((e) => PromptDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      personality: json['personality'] as String? ?? '',
    );

Map<String, dynamic> _$ProfilesDtoToJson(ProfilesDto instance) =>
    <String, dynamic>{
      'showCommon': instance.showCommon,
      'interests': instance.interests,
      'orientationSexuals': instance.orientationSexuals,
      'languages': instance.languages,
      'ethnicitys': instance.ethnicitys,
      'smartPhoto': instance.smartPhoto,
      'favoriteSongs': instance.favoriteSongs,
      'about': instance.about,
      'gender': instance.gender,
      'height': instance.height,
      'school': instance.school,
      'company': instance.company,
      'jobTitle': instance.jobTitle,
      'datingPurpose': instance.datingPurpose,
      'childrenPlan': instance.childrenPlan,
      'zodiac': instance.zodiac,
      'education': instance.education,
      'familyPlan': instance.familyPlan,
      'covidVaccine': instance.covidVaccine,
      'communicationType': instance.communicationType,
      'loveStyle': instance.loveStyle,
      'pet': instance.pet,
      'drinking': instance.drinking,
      'smoking': instance.smoking,
      'workout': instance.workout,
      'dietaryPreference': instance.dietaryPreference,
      'socialMedia': instance.socialMedia,
      'sleepingHabit': instance.sleepingHabit,
      'drug': instance.drug,
      'address': instance.address,
      'avatars': instance.avatars,
      'prompts': instance.prompts,
      'personality': instance.personality,
    };

ShowCommonDto _$ShowCommonDtoFromJson(Map<String, dynamic> json) =>
    ShowCommonDto(
      showSexual: json['showSexual'] as bool? ?? false,
      showGender: json['showGender'] as bool? ?? false,
      showAge: json['showAge'] as bool? ?? false,
      showHeight: json['showHeight'] as bool? ?? false,
      showEthnicity: json['showEthnicity'] as bool? ?? false,
      showChildrenPlan: json['showChildrenPlan'] as bool? ?? false,
      showFamilyPlan: json['showFamilyPlan'] as bool? ?? false,
      showWork: json['showWork'] as bool? ?? false,
      showSchool: json['showSchool'] as bool? ?? false,
      showEducation: json['showEducation'] as bool? ?? false,
      showDrinking: json['showDrinking'] as bool? ?? false,
      showSmoking: json['showSmoking'] as bool? ?? false,
      showDrug: json['showDrug'] as bool? ?? false,
      showDistance: json['showDistance'] as bool? ?? false,
    );

Map<String, dynamic> _$ShowCommonDtoToJson(ShowCommonDto instance) =>
    <String, dynamic>{
      'showSexual': instance.showSexual,
      'showGender': instance.showGender,
      'showAge': instance.showAge,
      'showHeight': instance.showHeight,
      'showEthnicity': instance.showEthnicity,
      'showChildrenPlan': instance.showChildrenPlan,
      'showFamilyPlan': instance.showFamilyPlan,
      'showWork': instance.showWork,
      'showSchool': instance.showSchool,
      'showEducation': instance.showEducation,
      'showDrinking': instance.showDrinking,
      'showSmoking': instance.showSmoking,
      'showDrug': instance.showDrug,
      'showDistance': instance.showDistance,
    };

ImageMetaDto _$ImageMetaDtoFromJson(Map<String, dynamic> json) => ImageMetaDto(
      url: json['url'] as String,
      thumbnails: (json['thumbnails'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ImageMetaDtoToJson(ImageMetaDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'thumbnails': instance.thumbnails,
    };

AvatarDto _$AvatarDtoFromJson(Map<String, dynamic> json) => AvatarDto(
      meta: ImageMetaDto.fromJson(json['meta'] as Map<String, dynamic>),
      id: json['id'] as String?,
      reviewerStatus: (json['reviewerStatus'] as num?)?.toInt() ?? 0,
      order: (json['order'] as num?)?.toInt() ?? 0,
      comment: json['comment'] as String? ?? '',
      reviewerViolateOption: (json['reviewerViolateOption'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      aiStatus: (json['aiStatus'] as num?)?.toInt() ?? 0,
      aiViolateOption: (json['aiViolateOption'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      aiPoint: (json['aiPoint'] as num?)?.toDouble() ?? 0,
      isVerified: json['isVerified'] as bool? ?? false,
      insert: json['insert'] == null
          ? null
          : InsertDto.fromJson(json['insert'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AvatarDtoToJson(AvatarDto instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta,
      'reviewerStatus': instance.reviewerStatus,
      'order': instance.order,
      'comment': instance.comment,
      'reviewerViolateOption': instance.reviewerViolateOption,
      'aiStatus': instance.aiStatus,
      'aiViolateOption': instance.aiViolateOption,
      'aiPoint': instance.aiPoint,
      'isVerified': instance.isVerified,
      'insert': instance.insert,
    };

PromptDto _$PromptDtoFromJson(Map<String, dynamic> json) => PromptDto(
      codePrompt: json['codePrompt'] as String,
      answer: json['answer'] as String,
      id: json['id'] as String? ?? '',
      order: (json['order'] as num?)?.toInt(),
      insert: json['insert'] == null
          ? null
          : InsertDto.fromJson(json['insert'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PromptDtoToJson(PromptDto instance) => <String, dynamic>{
      'codePrompt': instance.codePrompt,
      'answer': instance.answer,
      'id': instance.id,
      'order': instance.order,
      'insert': instance.insert,
    };
