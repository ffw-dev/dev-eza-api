// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponsePart _$ErrorResponsePartFromJson(Map<String, dynamic> json) =>
    ErrorResponsePart(
      json['FullName'] as String?,
      json['Code'] as int?,
      json['Message'] as String?,
    );

Map<String, dynamic> _$ErrorResponsePartToJson(ErrorResponsePart instance) =>
    <String, dynamic>{
      'FullName': instance.fullName,
      'Code': instance.code,
      'Message': instance.message,
    };
