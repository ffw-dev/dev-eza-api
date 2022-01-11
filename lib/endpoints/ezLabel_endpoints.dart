import 'package:dev_eza_api/response_models/ezLabel/ezLabelAssociateWith.dart';
import 'package:dio/dio.dart';

import 'package:dev_eza_api/response_models/ezLabel/ezLabel.dart';
import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';
import '../response_parts/base_response.dart';

@Injectable()
class EzLabelEndpoints {

  EzLabelEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<EzLabel>> setPost(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzLabel/Set", formData, true);
    var baseResponse = BaseResponse.fromApi<EzLabel>(response, (response) => EzLabel.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzLabelAssociateWithResponse>> associateWithPost(FormData formData) async {
    var response = await getIt<BaseHttpService>().postFetch("EzLabel/AssociateWith", formData, true);
    var baseResponse = BaseResponse.fromApi<EzLabelAssociateWithResponse>(response, (response) => EzLabelAssociateWithResponse.fromJson(response));

    return baseResponse;
  }
}