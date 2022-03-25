// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzUser _$EzUserFromJson(Map<String, dynamic> json) => EzUser(
      identifier: json['Identifier'] as String?,
      email: json['Email'] as String?,
      name: json['Name'] as String?,
      permission: json['Permission'] as String?,
      isAdministrator: json['IsAdministrator'] as bool?,
      preferences: json['Preferences'] as String?,
      fullName: json['FullName'] as String?,
    );

Map<String, dynamic> _$EzUserToJson(EzUser instance) => <String, dynamic>{
      'Identifier': instance.identifier,
      'Email': instance.email,
      'Name': instance.name,
      'Permission': instance.permission,
      'IsAdministrator': instance.isAdministrator,
      'Preferences': instance.preferences,
      'FullName': instance.fullName,
    };
