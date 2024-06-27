
import '../../../general/exception/base_exception.dart';

class AccessTokenDto{
  String? accessToken;

  AccessTokenDto(String? accessToken) {
    if (accessToken == null || accessToken.isEmpty) {
      throw InputInvalidException();
    }
    this.accessToken = accessToken;
  }
}