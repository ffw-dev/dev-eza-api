import 'package:dev_eza_api/response_models/ezProject.dart';

import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';
import '../response_parts/base_response.dart';

@Injectable()
class EzProjectEndpoints {

  EzProjectEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<EzProject>> getGet() async {
    var response = await getIt<BaseHttpService>().getFetch("EzProject/Get", {}, true);
    var baseResponse = BaseResponse.fromApi<EzProject>(response, (response) => EzProject.fromJson(response));

    return baseResponse;
  }
}