import 'package:dating_test/src/model/dtos/customers/profile/profiles_dto.dart';
import 'package:dating_test/src/model/dtos/customers/setting/setting_dto.dart';
import 'package:json_annotation/json_annotation.dart';

import 'explore/explore_dto.dart';

part 'customer_dto.g.dart';

@JsonSerializable()
class CustomerDto {
  // Khóa chính
  @JsonKey(name: '_id')
  late String id;

  // TokenID Firebase
  @JsonKey(name: 'oAuth2Id', defaultValue: '')
  String? oAuth2Id;

  // Họ và tên
  @JsonKey(name: 'fullname', defaultValue: '')
  String fullname;

  // Email
  @JsonKey(name: 'email')
  String? email;

  // Số điện thoại
  @JsonKey(name: 'phone')
  String? phone;

  // Ngày sinh
  @JsonKey(name: 'dob', fromJson: _dob, toJson: _dobDateFormat)
  DateTime? dob;

  // Hồ sơ
  @JsonKey(name: 'profiles')
  ProfilesDto? profiles;

  //Cài đặt
  @JsonKey(name: 'settings')
  SettingDto? settings;

  // Trạng thái xác minh tài khoản
  @JsonKey(name: 'verifyStatus', defaultValue: false)
  bool? verifyStatus;

  // Trạng thái trực tuyến
  @JsonKey(name: 'onlineNow', defaultValue: false)
  bool? onlineNow;

  // Trạng thái hoạt động
  @JsonKey(name: 'activeStatus')
  bool? activeStatus;

  // Vị trí
  @JsonKey(name: 'location')
  LocationDto? location;

  // Số coin trong ứng dụng
  @JsonKey(name: 'coins')
  int? coins;

  // Số lượt siêu thích
  @JsonKey(name: 'numberSuperLike')
  int? numberSuperLike;

  // Số lượt thích
  @JsonKey(name: 'numberLike')
  int? numberLike;

  // Số lượt Boost
  @JsonKey(name: 'numberBooster')
  int? numberBooster;

  // Khám phá
  @JsonKey(name: 'Explore')
  ExploreDto? explore;

  // plusCtrl
  @JsonKey(name: 'plusCtrl')
  PlusCtrlDto? plusCtrl;

  CustomerDto({
    required this.id,
    this.oAuth2Id,
    required this.fullname,
    this.email,
    this.phone,
    this.dob,
    required this.profiles,
    this.settings,
    this.verifyStatus,
    this.onlineNow,
    this.activeStatus,
    this.location,
    this.coins,
    this.numberSuperLike,
    this.numberLike,
    this.numberBooster,
    this.explore,
    this.plusCtrl,
  });

  factory CustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDtoToJson(this);

  static DateTime? _dob(String? date) =>
      date != null ? DateTime.parse(date) : null;

  static String? _dobDateFormat(DateTime? date) => date?.toIso8601String();
}

// Location
@JsonSerializable()
class LocationDto {
  // Vĩ độ
  @JsonKey(name: 'lat', defaultValue: "0")
  final String? lat;

  // Kinh độ
  @JsonKey(name: 'long', defaultValue: "0")
  final String? long;

  LocationDto({
    this.lat,
    this.long,
  });

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LocationDtoToJson(this);
}
