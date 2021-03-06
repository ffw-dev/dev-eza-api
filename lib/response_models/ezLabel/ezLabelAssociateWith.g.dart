// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ezLabelAssociateWith.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EzLabelAssociateWithResponse _$EzLabelAssociateWithResponseFromJson(
        Map<String, dynamic> json) =>
    EzLabelAssociateWithResponse(
      identifier: json['Identifier'] as String?,
      typeId: json['TypeId'] as String?,
      doFilesRequireLogin: json['DoFilesRequireLogin'] as bool?,
      files: (json['Files'] as List<dynamic>?)
          ?.map((e) => EzLabelFields.fromJson(e as Map<String, dynamic>))
          .toList(),
      annotations: (json['Annotations'] as List<dynamic>?)
          ?.map((e) => EzAnnotations.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['Tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      data: (json['Data'] as List<dynamic>?)
          ?.map(
              (e) => EzLabelAdditionalProps.fromJson(e as Map<String, dynamic>))
          .toList(),
      fullName: json['FullName'] as String?,
    );

Map<String, dynamic> _$EzLabelAssociateWithResponseToJson(
        EzLabelAssociateWithResponse instance) =>
    <String, dynamic>{
      'Identifier': instance.identifier,
      'TypeId': instance.typeId,
      'DoFilesRequireLogin': instance.doFilesRequireLogin,
      'Files': instance.files?.map((e) => e.toJson()).toList(),
      'Annotations': instance.annotations?.map((e) => e.toJson()).toList(),
      'Tags': instance.tags,
      'Data': instance.data?.map((e) => e.toJson()).toList(),
      'FullName': instance.fullName,
    };
