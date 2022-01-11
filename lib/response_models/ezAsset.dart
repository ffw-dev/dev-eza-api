import 'package:dev_eza_api/response_models/ezLabel/ezLabelAnnotations.dart';
import 'package:dev_eza_api/response_models/ezLabel/ezLabelData.dart';

import 'package:json_annotation/json_annotation.dart';

import 'ezFiles.dart';

part 'ezAsset.g.dart';

@JsonSerializable(explicitToJson: true)
class EzAsset {
  @JsonKey(name: 'Identifier')
  String? identifier;
  @JsonKey(name: 'TypeId')
  String? typeId;
  @JsonKey(name: 'DoFilesRequireLogin')
  bool? doFilesRequireLogin;
  @JsonKey(name: 'Files')
  List<EzFiles>? files;
  @JsonKey(name: 'Annotations')
  List<EzAnnotations>? annotations;
  @JsonKey(name: 'Tags')
  List<String>? tags;
  @JsonKey(name: 'Data')
  List<EzData>? data;
  @JsonKey(name: 'FullName')
  String? fullName;

  EzAsset(
      {this.identifier,
        this.typeId,
        this.doFilesRequireLogin,
        this.files,
        this.annotations,
        this.tags,
        this.data,
        this.fullName});

  factory EzAsset.fromJson(Map<String, dynamic> json) => _$EzAssetFromJson(json);
  Map<String, dynamic> toJson() => _$EzAssetToJson(this);
}

