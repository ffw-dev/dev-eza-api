
import 'package:dev_eza_api/response_models/ezLabel/ezLabelFields.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ezLabelData.g.dart';

@JsonSerializable(explicitToJson: true)
class EzData {
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Fields')
  EzLabelFields? fields;

  EzData({this.name, this.fields});

  factory EzData.fromJson(Map<String, dynamic> json) => _$EzDataFromJson(json);
  Map<String, dynamic> toJson() => _$EzDataToJson(this);
}