import 'dart:convert';

import 'package:dev_eza_api/response_models/session.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';
import '../response_parts/base_response.dart';

@Injectable()
class UserEndpoints {
  UserEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<EzUser>> setUserSet(String email, String password, EzUserPermissions permissions) async {
    FormData formData = FormData.fromMap({
      "data": jsonEncode({
        "email": email,
        "name": email,
        "permission": userPermissionFromEnum(permissions)
      }),
      "password": password,
    });

    var response = await getIt<BaseHttpService>().postFetch("EzUser/Set", formData, true);
    var baseResponse = BaseResponse.fromApi<EzUser>(response, (response) => EzUser.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzUser>> meGet() async {
    var response = await getIt<BaseHttpService>().getFetch("EzUser/Me", {}, true);
    var baseResponse = BaseResponse.fromApi<EzUser>(response, (response) => EzUser.fromJson(response));

    return baseResponse;
  }
}
