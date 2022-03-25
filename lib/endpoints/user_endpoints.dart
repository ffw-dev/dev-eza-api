import 'dart:convert';

import 'package:dev_eza_api/response_models/session.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';
import '../enums/ezUserEnum.dart';
import '../response_parts/base_response.dart';

@Injectable()
class UserEndpoints {
  UserEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<User>> setUserSet(String email, String password, EzUserPermissions permissions) async {
    FormData formData = FormData.fromMap({
      "data": jsonEncode({
        "email": email,
        "name": email,
        "permissions": userPermissionFromEnum(permissions)
      }),
      "password": password,
    });

    var response = await getIt<BaseHttpService>().postFetch("User/Set", formData, true);
    var baseResponse = BaseResponse.fromApi<User>(response, (response) => User.fromJson(response));

    return baseResponse;
  }
}