// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezLabelFields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzLabelFields _$EzLabelFieldsFromJson(Map<String, dynamic> json) => EzLabelFields(
      identifier: json['Identifier'] as String?,
      name: json['Name'] as String?,
      type: json['Type'] as String?,
      destinations: (json['Destinations'] as List<dynamic>?)
          ?.map((e) => EzDestinations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EzLabelFieldsToJson(EzLabelFields instance) => <String, dynamic>{
      'Identifier': instance.identifier,
      'Name': instance.name,
      'Type': instance.type,
      'Destinations': instance.destinations?.map((e) => e.toJson()).toList(),
    };
