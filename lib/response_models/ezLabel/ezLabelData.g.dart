// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezLabelData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzData _$EzDataFromJson(Map<String, dynamic> json) => EzData(
      name: json['Name'] as String?,
      fields: (json['Fields'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$EzDataToJson(EzData instance) => <String, dynamic>{
      'Name': instance.name,
      'Fields': instance.fields,
    };
