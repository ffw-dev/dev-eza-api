// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezLabelData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzData _$EzDataFromJson(Map<String, dynamic> json) => EzData(
      name: json['Name'] as String?,
      fields: (json['Fields'] as List<dynamic>?)
          ?.map(
              (e) => EzLabelAdditionalProps.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EzDataToJson(EzData instance) => <String, dynamic>{
      'Name': instance.name,
      'Fields': instance.fields?.map((e) => e.toJson()).toList(),
    };
