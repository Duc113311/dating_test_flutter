import 'package:dating_test/src/model/stores/local_storage.dart';

import '../../../configs/app_utils.dart';
import '../../../general/exception/base_exception.dart';
import '../auth/access_token_dto.dart';
import 'package:get_it/get_it.dart';

abstract class BaseDataSource {
  final getIt = GetIt.instance;

  AppUtils get appClient => getIt<AppUtils>();


  AccessTokenDto getLocalAccessToken() {
    var accessToken = LocalStorage.getAccessToken();
    if (accessToken == null) {
      throw NullException();
    }
    return AccessTokenDto(accessToken);
  }
}
