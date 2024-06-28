import 'package:dating_test/src/model/dtos/base/base_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../../../general/exception/error_handler.dart';
import '../../remote/api_end_point.dart';

@Singleton()
class StaticRequest extends BaseDataSource {
  Future<T?> requestStaticInfo<T>(String path) async {
    try {
      print("path $path");
      print("ApiEndpoint.getUrlQueryApi $ApiEndpoint.getUrlQueryApi");
      var response = await appClient
          .dioAuth()
          .get(ApiEndpoint.getUrlQueryApi(path))
          .onError((DioException error, stackTrace) {
        return ErrorMiddleHandler.handleDioError(error);
      });

      ErrorMiddleHandler.log(response);

      if (response.statusCode == 200 && response.data != null) {
        return response.data['data'];
      } else {
        return null;
      }
    } catch (error) {
      debugPrint("requestStaticInfo: $error");
      return null;
    }
  }
}
