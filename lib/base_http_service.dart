import 'dart:convert';

import 'package:dev_eza_api/response_models/session.dart';
import 'package:dev_eza_api/response_parts/error_response_part.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton()
@Injectable()
class BaseHttpService {
  Session? session;
  late final Dio _dio;

  Dio get dio => _dio;

  BaseHttpService() {
    init();
  }

  void init() {
    _dio = Dio();
    _dio.options.baseUrl = "https://dev-eza.api.ffw.io/v6/";
  }

  Future<Map<String, dynamic>> getFetch(String endpoint, Map<String, String> query, bool requiresAuthed) async {
    if (requiresAuthed) {
      if (session == null) {
        throw DevEzaException(ErrorResponsePart('Inner exception', 0, 'Session does not have any session'));
      } else {
        query.addAll({'sessionGUID': session!.guid});
      }
    }

    return _dio.get(createURL(endpoint), queryParameters: query).then((response) {
      if (response.statusCode != 200) {
        throw DevEzaException(ErrorResponsePart('Status code is not 200', response.statusCode, response.statusMessage ?? 'No message'));
      }
      return response.data as Map<String, dynamic>;
    });
  }

  Future<Map<String, dynamic>> postFetch(String endpoint, FormData formData, bool requiresAuthed) async {
    if (requiresAuthed) {
      /** Application throws exception but does not print it nor stops the application, just gets stuck **/
      try {
        formData = addSessionOrThrow(formData);
      } catch (e) {
        print(e);
        return {};
      }
    }

    late Response<dynamic> response;
    try {
      response = await _dio.post(
        createURL(endpoint),
        data: formData,
      );

    } on DioError catch (e) {
      print(e.message.toString());
      print(e.response.toString());
      throw DevEzaException(ErrorResponsePart.fromJson(jsonDecode(e.response.toString())["Error"]));
    } catch (e) {
      throw Exception(e);
    }

    if (response.statusCode != 200) {
      throw DevEzaException(ErrorResponsePart('Status code is not 200', response.statusCode, response.statusMessage ?? 'No message'));
    }

    var data = response.data;

    return Future.value(data);
  }

  FormData addSessionOrThrow(FormData formData) {
    if (session == null) {
      throw DevEzaException(ErrorResponsePart('Inner exception', 0, 'Session does not have any session'));
    }

    formData.fields.add(MapEntry('sessionGUID', session!.guid));

    return formData;
  }

  String createURL(String endpoint) {
    return _dio.options.baseUrl + endpoint;
  }
}

class DevEzaException {
  ErrorResponsePart errorResponsePart;

  DevEzaException(this.errorResponsePart);
}
