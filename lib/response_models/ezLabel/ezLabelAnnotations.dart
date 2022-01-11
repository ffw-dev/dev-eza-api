
import 'package:dev_eza_api/response_models/ezLabel/ezLabelData.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ezLabelAnnotations.g.dart';

@JsonSerializable(explicitToJson: true)
class EzAnnotations {
  @JsonKey(name: 'DefinitionId')
  String? definitionId;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Data')
  List<EzData>? data;

  EzAnnotations({this.definitionId, this.name, this.data});

  factory EzAnnotations.fromJson(Map<String, dynamic> json) => _$EzAnnotationsFromJson(json);
  Map<String, dynamic> toJson() => _$EzAnnotationsToJson(this);
}