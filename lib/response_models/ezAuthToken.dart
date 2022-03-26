import 'package:json_annotation/json_annotation.dart';

part 'ezAuthToken.g.dart';

@JsonSerializable()
class EzAuthToken {

  @JsonKey(name: 'Token')
  String? token;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'UserGuid')
  String? userGuid;

  EzAuthToken({this.token, this.name, this.userGuid});


  factory EzAuthToken.fromJson(Map<String, dynamic> json) => _$EzAuthTokenFromJson(json);
  Map<String, dynamic> toJson() => _$EzAuthTokenToJson(this);
}