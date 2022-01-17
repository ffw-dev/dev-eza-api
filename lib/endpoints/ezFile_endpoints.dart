import 'package:dev_eza_api/response_models/ezFileCreateResponse.dart';
import 'package:dev_eza_api/response_models/ezWasSuccessResponse.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';
import '../response_parts/base_response.dart';

@Injectable()
class EzFileEndpoints {
  EzFileEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<EzFileCreateResponse>> createPost(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzFile/Create", formData, true);
    var baseResponse =
        BaseResponse.fromApi<EzFileCreateResponse>(response, (response) => EzFileCreateResponse.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzWasSuccessResponse>> deletePost(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzFile/Delete", formData, true);
    var baseResponse =
        BaseResponse.fromApi<EzWasSuccessResponse>(response, (response) => EzWasSuccessResponse.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzWasSuccessResponse>> setSet(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzFile/Set", formData, true);
    var baseResponse =
        BaseResponse.fromApi<EzWasSuccessResponse>(response, (response) => EzWasSuccessResponse.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzWasSuccessResponse>> uploadPost(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzFile/Upload", formData, true);

    var baseResponse =
        BaseResponse.fromApi<EzWasSuccessResponse>(response, (response) => EzWasSuccessResponse.fromJson(response));

    return baseResponse;
  }
}
