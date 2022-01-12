import 'package:dev_eza_api/response_models/ezAsset.dart';
import 'package:dev_eza_api/response_models/ezWasSuccessResponse.dart';
import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';
import '../response_parts/base_response.dart';

@Injectable()
class EzAssetEndpoints {
  EzAssetEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<EzAsset>> getGet(String identifier) async {
    var response = await getIt<BaseHttpService>().getFetch("EzAsset/Get", {'Id': identifier}, true);
    var baseResponse = BaseResponse.fromApi<EzAsset>(response, (response) => EzAsset.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzAsset>> setSet(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzAsset/Set", formData, true);
    var baseResponse = BaseResponse.fromApi<EzAsset>(response, (response) => EzAsset.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzAsset>> setTagSet(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzAsset/SetTag", formData, true);
    var baseResponse = BaseResponse.fromApi<EzAsset>(response, (response) => EzAsset.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzWasSuccessResponse>> setFileAccessSet(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzAsset/SetFileAccess", formData, true);
    var baseResponse = BaseResponse.fromApi<EzAsset>(response, (response) => EzAsset.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzWasSuccessResponse>> DeleteGet(String id) async {
    var response = await getIt<BaseHttpService>().getFetch("EzAsset/SetFileAccess", {'id': id}, true);
    var baseResponse = BaseResponse.fromApi<EzAsset>(response, (response) => EzAsset.fromJson(response));

    return baseResponse;
  }
}
