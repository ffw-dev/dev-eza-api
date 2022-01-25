// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezAsset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzAsset _$EzAssetFromJson(Map<String, dynamic> json) => EzAsset(
      identifier: json['Identifier'] as String?,
      typeId: json['TypeId'] as String?,
      doFilesRequireLogin: json['DoFilesRequireLogin'] as bool?,
      files: (json['Files'] as List<dynamic>?)
          ?.map((e) => EzFiles.fromJson(e as Map<String, dynamic>))
          .toList(),
      annotations: (json['Annotations'] as List<dynamic>?)
          ?.map((e) => EzAnnotations.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['Tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => EzData.fromJson(e as Map<String, dynamic>))
          .toList(),
      fullName: json['FullName'] as String?,
    );

Map<String, dynamic> _$EzAssetToJson(EzAsset instance) => <String, dynamic>{
      'Identifier': instance.identifier,
      'TypeId': instance.typeId,
      'DoFilesRequireLogin': instance.doFilesRequireLogin,
      'Files': instance.files?.map((e) => e.toJson()).toList(),
      'Annotations': instance.annotations?.map((e) => e.toJson()).toList(),
      'Tags': instance.tags,
      'Data': instance.data?.map((e) => e.toJson()).toList(),
      'FullName': instance.fullName,
    };
