// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezLabelAnnotations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzAnnotations _$EzAnnotationsFromJson(Map<String, dynamic> json) => EzAnnotations(
      definitionId: json['DefinitionId'] as String?,
      name: json['Name'] as String?,
      data: (json['Data'] as List<dynamic>?)?.map((e) => EzData.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$EzAnnotationsToJson(EzAnnotations instance) => <String, dynamic>{
      'DefinitionId': instance.definitionId,
      'Name': instance.name,
      'Data': instance.data?.map((e) => e.toJson()).toList(),
    };
