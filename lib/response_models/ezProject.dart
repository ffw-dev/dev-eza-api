import 'package:dev_eza_api/response_models/ezLabel/ezLabel.dart';
import 'package:dev_eza_api/response_models/user.dart';

import 'package:json_annotation/json_annotation.dart';

part 'ezProject.g.dart';

@JsonSerializable(explicitToJson: true)
class EzProject {
  @JsonKey(name: 'Identifier')
  String? identifier;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Users')
  List<User>? users;
  @JsonKey(name: 'Labels')
  List<EzLabel>? labels;
  @JsonKey(name: 'FullName')
  String? fullName;

  EzProject(
      {this.identifier, this.name, this.users, this.labels, this.fullName});

  factory EzProject.fromJson(Map<String, dynamic> json) => _$EzProjectFromJson(json);
  Map<String, dynamic> toJson() => _$EzProjectToJson(this);
}