import 'package:dev_eza_api/response_models/serializable_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'secure_cookie.g.dart';

@JsonSerializable(explicitToJson: true)
class SecureCookie extends SerializableModel {
  @JsonKey(name: 'Guid')
  String guid;

  @JsonKey(name: 'PasswordGuid')
  String passwordGuid;

  @JsonKey(name: 'FullName')
  String fullName;

  SecureCookie(this.guid, this.fullName, this.passwordGuid);

  factory SecureCookie.fromJson(Map<String, dynamic> json) => _$SecureCookieFromJson(json);

  Map<String, dynamic> toJson() => _$SecureCookieToJson(this);

  @override
  fromJson<SecureCookie>(Map<String, dynamic> json) => this.fromJson(json);
}
