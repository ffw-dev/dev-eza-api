// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezLabelData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzData _$EzDataFromJson(Map<String, dynamic> json) => EzData(
      name: json['Name'] as String?,
      fields: json['Fields'] == null
          ? null
          : EzLabelFields.fromJson(json['Fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EzDataToJson(EzData instance) => <String, dynamic>{
      'Name': instance.name,
      'Fields': instance.fields?.toJson(),
    };
