import 'package:json_annotation/json_annotation.dart';

part 'ezDestination.g.dart';

@JsonSerializable(explicitToJson: true)
class EzDestinations {
  @JsonKey(name: 'Type')
  String? type;
  @JsonKey(name: 'Url')
  String? url;

  EzDestinations({this.type, this.url});

  factory EzDestinations.fromJson(Map<String, dynamic> json) => _$EzDestinationsFromJson(json);

  Map<String, dynamic> toJson() => _$EzDestinationsToJson(this);
}
