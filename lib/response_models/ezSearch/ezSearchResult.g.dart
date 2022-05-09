// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezSearchResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzSearchResult _$EzSearchResultFromJson(Map<String, dynamic> json) =>
    EzSearchResult(
      identifier: json['Identifier'] as String?,
      typeId: json['TypeId'] as String?,
      fields: (json['Fields'] as List<dynamic>?)
          ?.map((e) => EzFields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EzSearchResultToJson(EzSearchResult instance) =>
    <String, dynamic>{
      'Identifier': instance.identifier,
      'TypeId': instance.typeId,
      'Fields': instance.fields?.map((e) => e.toJson()).toList(),
    };
