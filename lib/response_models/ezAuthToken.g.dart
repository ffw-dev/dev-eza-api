// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezAuthToken.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzAuthToken _$EzAuthTokenFromJson(Map<String, dynamic> json) => EzAuthToken(
      token: json['Token'] as String?,
      name: json['Name'] as String?,
      userGuid: json['UserGuid'] as String?,
    );

Map<String, dynamic> _$EzAuthTokenToJson(EzAuthToken instance) =>
    <String, dynamic>{
      'Token': instance.token,
      'Name': instance.name,
      'UserGuid': instance.userGuid,
    };
