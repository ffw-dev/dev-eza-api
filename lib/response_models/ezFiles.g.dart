// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezFiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzFiles _$EzFilesFromJson(Map<String, dynamic> json) => EzFiles(
      identifier: json['Identifier'] as String?,
      name: json['Name'] as String?,
      type: json['Type'] as String?,
      destinations: (json['Destinations'] as List<dynamic>?)
          ?.map((e) => EzDestinations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EzFilesToJson(EzFiles instance) => <String, dynamic>{
      'Identifier': instance.identifier,
      'Name': instance.name,
      'Type': instance.type,
      'Destinations': instance.destinations?.map((e) => e.toJson()).toList(),
    };
