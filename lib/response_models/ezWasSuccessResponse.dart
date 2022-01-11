import 'package:json_annotation/json_annotation.dart';

part 'ezWasSuccessResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class EzWasSuccessResponse {
  @JsonKey(name: 'WasSuccess')
  bool? wasSuccess;
  @JsonKey(name: 'FullName')
  String? fullName;

  EzWasSuccessResponse({this.wasSuccess, this.fullName});

  factory EzWasSuccessResponse.fromJson(Map<String, dynamic> json) => _$EzWasSuccessResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EzWasSuccessResponseToJson(this);
}