// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDto _$CustomerDtoFromJson(Map<String, dynamic> json) => CustomerDto(
      id: json['_id'] as String,
      oAuth2Id: json['oAuth2Id'] as String? ?? '',
      fullname: json['fullname'] as String? ?? '',
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      dob: CustomerDto._dob(json['dob'] as String?),
      profiles: json['profiles'] == null
          ? null
          : ProfilesDto.fromJson(json['profiles'] as Map<String, dynamic>),
      settings: json['settings'] == null
          ? null
          : SettingDto.fromJson(json['settings'] as Map<String, dynamic>),
      verifyStatus: json['verifyStatus'] as bool? ?? false,
      onlineNow: json['onlineNow'] as bool? ?? false,
      activeStatus: json['activeStatus'] as bool?,
      location: json['location'] == null
          ? null
          : LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      coins: (json['coins'] as num?)?.toInt(),
      numberSuperLike: (json['numberSuperLike'] as num?)?.toInt(),
      numberLike: (json['numberLike'] as num?)?.toInt(),
      numberBooster: (json['numberBooster'] as num?)?.toInt(),
      explore: json['Explore'] == null
          ? null
          : ExploreDto.fromJson(json['Explore'] as Map<String, dynamic>),
      plusCtrl: json['plusCtrl'] == null
          ? null
          : PlusCtrlDto.fromJson(json['plusCtrl'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDtoToJson(CustomerDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'oAuth2Id': instance.oAuth2Id,
      'fullname': instance.fullname,
      'email': instance.email,
      'phone': instance.phone,
      'dob': CustomerDto._dobDateFormat(instance.dob),
      'profiles': instance.profiles,
      'settings': instance.settings,
      'verifyStatus': instance.verifyStatus,
      'onlineNow': instance.onlineNow,
      'activeStatus': instance.activeStatus,
      'location': instance.location,
      'coins': instance.coins,
      'numberSuperLike': instance.numberSuperLike,
      'numberLike': instance.numberLike,
      'numberBooster': instance.numberBooster,
      'Explore': instance.explore,
      'plusCtrl': instance.plusCtrl,
    };

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) => LocationDto(
      lat: json['lat'] as String? ?? '0',
      long: json['long'] as String? ?? '0',
    );

Map<String, dynamic> _$LocationDtoToJson(LocationDto instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };
