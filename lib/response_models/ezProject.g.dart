// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezProject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzProject _$EzProjectFromJson(Map<String, dynamic> json) => EzProject(
      identifier: json['Identifier'] as String?,
      name: json['Name'] as String?,
      users: (json['Users'] as List<dynamic>?)?.map((e) => User.fromJson(e as Map<String, dynamic>)).toList(),
      labels: (json['Labels'] as List<dynamic>?)?.map((e) => EzLabel.fromJson(e as Map<String, dynamic>)).toList(),
      fullName: json['FullName'] as String?,
    );

Map<String, dynamic> _$EzProjectToJson(EzProject instance) => <String, dynamic>{
      'Identifier': instance.identifier,
      'Name': instance.name,
      'Users': instance.users?.map((e) => e.toJson()).toList(),
      'Labels': instance.labels?.map((e) => e.toJson()).toList(),
      'FullName': instance.fullName,
    };
