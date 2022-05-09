import 'dart:convert';

import 'package:dev_eza_api/response_models/ezFileCreateResponse.dart';
import 'package:dev_eza_api/response_models/ezSearch/ezSearchResult.dart';
import 'package:dev_eza_api/response_models/ezWasSuccessResponse.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../main.dart';
import '../base_http_service.dart';
import '../response_parts/base_response.dart';

@Injectable()
class SearchEndpoints {
  SearchEndpoints(BaseHttpService baseFetch);

  Future<BaseResponse<EzSearchResult>> searchGet(
      {required String query,
      required String filter,
      required String sort,
      required String tag,
      required String facets,
      required String between,
      required int pageIndex,
      required int pageSize}) async {

    var response = await getIt<BaseHttpService>().getFetch("EzSearch/Get", {
      "q": query, "filter": filter, "sort": sort, "tag": tag, "facets": facets, "between": between, "pageIndex": "0", "pageSize": pageSize.toString()
    }, true);

    return BaseResponse.fromApi(response, (response) => EzSearchResult.fromJson(response));
  }
}
