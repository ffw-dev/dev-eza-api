import 'package:json_annotation/json_annotation.dart';

import 'body_response_part.dart';
import 'body_response_part.dart';
import 'error_response_part.dart';
import 'header_response_part.dart';

class BaseResponse<T> {

  @JsonKey(name: 'Body')
  BodyResponsePart<T> body;

  @JsonKey(name: 'Error')
  ErrorResponsePart error;

  @JsonKey(name: 'Header')
  HeaderResponsePart header;

  BaseResponse(this.body, this.header, this.error);

  bool get wasSuccess => error.fullName != null;

  static fromApi<T>(Map<String, dynamic> data, T Function(Map<String, dynamic> json) fromJsonT) {
    return BaseResponse(
        BodyResponsePart.fromJson(data['Body'], (data) => fromJsonT(data as Map<String, dynamic>)),
        HeaderResponsePart.fromJson(data['Header']),
        ErrorResponsePart.fromJson(data['Error'])
    );
  }
}