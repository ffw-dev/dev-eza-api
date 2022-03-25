

import 'package:json_annotation/json_annotation.dart';

part 'ezUser.g.dart';

@JsonSerializable(explicitToJson: true)
class EzUser {
  @JsonKey(name: 'Identifier')
  String? identifier;
  @JsonKey(name: 'Email')
  String? email;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Permission')
  String? permission;
  @JsonKey(name: 'IsAdministrator')
  bool? isAdministrator;
  @JsonKey(name: 'Preferences')
  String? preferences;
  @JsonKey(name: 'FullName')
  String? fullName;

  EzUser(
      {this.identifier,
        this.email,
        this.name,
        this.permission,
        this.isAdministrator,
        this.preferences,
        this.fullName});

  factory EzUser.fromJson(Map<String, dynamic> json) => _$EzUserFromJson(json);
  Map<String, dynamic> toJson() => _$EzUserToJson(this);
}