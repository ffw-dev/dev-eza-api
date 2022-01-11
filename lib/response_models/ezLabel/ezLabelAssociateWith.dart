import 'package:dev_eza_api/response_models/ezLabel/ezLabelAdditionalProps.dart';
import 'package:dev_eza_api/response_models/ezLabel/ezLabelAnnotations.dart';
import 'package:dev_eza_api/response_models/ezLabel/ezLabelData.dart';
import 'package:dev_eza_api/response_models/ezLabel/ezLabelFields.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ezLabelAssociateWith.g.dart';

@JsonSerializable(explicitToJson: true)
class EzLabelAssociateWithResponse {
  @JsonKey(name: 'Identifier')
  String? identifier;
  @JsonKey(name: 'TypeId')
  String? typeId;
  @JsonKey(name: 'DoFilesRequireLogin')
  bool? doFilesRequireLogin;
  @JsonKey(name: 'Files')
  List<EzLabelFields>? files;
  @JsonKey(name: 'Annotations')
  List<EzAnnotations>? annotations;
  @JsonKey(name: 'Tags')
  List<String>? tags;
  @JsonKey(name: 'Data')
  List<EzLabelAdditionalProps>? data;
  @JsonKey(name: 'FullName')
  String? fullName;

  EzLabelAssociateWithResponse(
      {this.identifier,
        this.typeId,
        this.doFilesRequireLogin,
        this.files,
        this.annotations,
        this.tags,
        this.data,
        this.fullName});


  factory EzLabelAssociateWithResponse.fromJson(Map<String, dynamic> json) => _$EzLabelAssociateWithResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EzLabelAssociateWithResponseToJson(this);
}


