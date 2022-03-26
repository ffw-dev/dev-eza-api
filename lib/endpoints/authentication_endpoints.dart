import 'package:dev_eza_api/response_models/ezAuthToken.dart';
import 'package:dev_eza_api/response_parts/base_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';

@Injectable()
class AuthenticationEndpoints {
  AuthenticationEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<User>> emailPasswordPost(String email, String password) async {
    FormData formData = FormData.fromMap({
      "email": email,
      "password": password,
    });

    var response =
        await getIt<BaseHttpService>().postFetch("EmailPassword/Login", formData, true).then((value) => value);
    var data = response;

    return BaseResponse.fromApi<User>(data, (data) => User.fromJson(data));
  }

  Future<BaseResponse<SecureCookie>?>? secureCookieLogin(String guid, String password) async {
    var formData = FormData.fromMap({'guid': guid, 'passwordGuid': password});

    var response =
        await getIt<BaseHttpService>().postFetch("SecureCookie/Login", formData, true).then((value) => value);
    if (response.isEmpty) {
      return null;
    }
    var data = response;

    return BaseResponse.fromApi(data, (data) => SecureCookie.fromJson(data));
  }

  Future<BaseResponse<SecureCookie>> secureCookieCreate() async {
    var response = await getIt<BaseHttpService>().getFetch("SecureCookie/Create", {}, true).then((value) => value);
    var data = response;

    return BaseResponse.fromApi(data, (data) => SecureCookie.fromJson(data));
  }

  Future<BaseResponse<EzAuthToken>> createAuthKey(String name) async {
    var formData = FormData.fromMap({'name': name});

    var response = await getIt<BaseHttpService>().postFetch("AuthKey/Create", formData, true).then((value) => value);
    var data = response;

    return BaseResponse.fromApi(data, (data) => EzAuthToken.fromJson(data));
  }

  Future<BaseResponse<Session>> loginWithAuthKey(String token) async {
    var response = await getIt<BaseHttpService>().getFetch("AuthKey/Login", {"token": token}, true).then((value) => value);
    var baseResponse = BaseResponse.fromApi<Session>(response, (response) => Session.fromJson(response));

    getIt<BaseHttpService>().session = baseResponse.body.results[0];

    return baseResponse;
  }
}
