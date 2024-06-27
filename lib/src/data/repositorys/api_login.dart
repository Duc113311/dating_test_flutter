import 'dart:convert';

import 'package:dating_test/src/configs/app_utils.dart';
import 'package:dating_test/src/model/stores/local_storage.dart';
import 'package:http/http.dart' as http;

import '../../model/dtos/customers/customer_dto.dart';
import '../../model/dtos/logins/login_dto.dart';
import '../../model/dtos/response-base/result_base_dto.dart';

abstract class LoginResponseModel {
  CustomerDto? customer;
  int? errorCode;
  String? message;
  BlockedExtraInfoDto? blockExtraInfo;
}

class LoginError extends LoginResponseModel {
  LoginError(int code, String message, {BlockedExtraInfoDto? extraInfo}) {
    super.errorCode = code;
    super.message = message;
    super.blockExtraInfo = extraInfo;
  }
}

class LoginSuccess extends LoginResponseModel {
  LoginSuccess(CustomerDto customer) {
    super.customer = customer;
  }
}

class ApiLogin {
  static Future<LoginResponseModel> postLogin(String oAuth2Id) async {
    const String url = "${AppUtils.END_POINT}/api/v1/login";

    http.Response response = await http.post(
      Uri.parse(url),
      headers: AppUtils.getHeader(),
      body: jsonEncode({'oAuth2Id': oAuth2Id}),
    );

    switch (response.statusCode) {
      case ApiCode.success:
        print("response $response");
        final body = json.decode(response.body);
        final resultModel = ResultBaseDto<LoginDto>.fromJson(
            body, (data) => LoginDto.fromJson(data as Map<String, dynamic>));
        final user = resultModel?.data?.user;
        final token = resultModel?.data?.token;
        if (user == null || token == null) {
          return LoginError(ApiCode.dataFormatUnexpected, resultModel.message);
        } else {
          await LocalStorage.setAccessToken(token);
          await user.profiles?.sortAvatar();
          // await StaticInfoManager.shared().loadData();
          await LocalStorage.setMyCustomer(user);

          //Update auth websocket
          // SocketManager.shared().updateAuth(token);

          return LoginSuccess(user);
        }
      case ApiCode.forbidden:
        final body = json.decode(response.body);
        final blockedModel = BlockedAccountDto.fromJson(body);
        return LoginError(response.statusCode, response.body,
            extraInfo: blockedModel.extraInfo);
      case ApiCode.unauthorized:
        LocalStorage.setAccessToken('');
        return LoginError(response.statusCode, response.body);
      default:
        return LoginError(response.statusCode, response.body);
    }
  }
}
