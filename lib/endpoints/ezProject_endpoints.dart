import 'package:dev_eza_api/response_models/ezProject.dart';
import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';
import '../response_parts/base_response.dart';

const DEFAULT_PROJECT_ID = "50";

@Injectable()
class EzProjectEndpoints {
  EzProjectEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<EzProject>> getGet() async {
    var response = await getIt<BaseHttpService>().getFetch("EzProject/Get", {}, true);
    var baseResponse = BaseResponse.fromApi<EzProject>(response, (response) => EzProject.fromJson(response));

    return baseResponse;
  }

  Future<BaseResponse<EzWasSuccessResponse>> associateWith(String userId, {id = DEFAULT_PROJECT_ID}) async {
    var response = await getIt<BaseHttpService>().getFetch("EzProject/AssociateWith", {"Id": id, "UserId": userId}, true);
    var baseResponse = BaseResponse.fromApi<EzWasSuccessResponse>(response, (response) => EzWasSuccessResponse.fromJson(response));

    return baseResponse;
  }
}
