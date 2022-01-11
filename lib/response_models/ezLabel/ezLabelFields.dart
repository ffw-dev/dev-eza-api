import 'package:dev_eza_api/response_models/ezDestination.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ezLabelFields.g.dart';

@JsonSerializable(explicitToJson: true)
class EzLabelFields {
  @JsonKey(name: 'Identifier')
  String? identifier;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'Destinations')
  List<EzDestinations>? destinations;

  EzLabelFields({this.identifier, this.name, this.type, this.destinations});

  factory EzLabelFields.fromJson(Map<String, dynamic> json) => _$EzLabelFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$EzLabelFieldsToJson(this);
}