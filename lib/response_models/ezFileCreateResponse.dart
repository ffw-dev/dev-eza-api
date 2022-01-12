import 'package:json_annotation/json_annotation.dart';

part 'ezFileCreateResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class EzFileCreateResponse {
  @JsonKey(name: 'Identifier')
  String? identifier;

  EzFileCreateResponse({this.identifier});

  factory EzFileCreateResponse.fromJson(Map<String, dynamic> json) => _$EzFileCreateResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EzFileCreateResponseToJson(this);
}