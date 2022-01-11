import 'package:dev_eza_api/response_models/ezDestination.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ezFiles.g.dart';

@JsonSerializable(explicitToJson: true)
class EzFiles {
  @JsonKey(name: 'Identifier')
  String? identifier;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'Destinations')
  List<EzDestinations>? destinations;

  EzFiles({this.identifier, this.name, this.type, this.destinations});

  factory EzFiles.fromJson(Map<String, dynamic> json) => _$EzFilesFromJson(json);
  Map<String, dynamic> toJson() => _$EzFilesToJson(this);
}