import 'package:json_annotation/json_annotation.dart';

part 'ezLabel.g.dart';

@JsonSerializable(explicitToJson: true)
class EzLabel {
  @JsonKey(name: 'Identifier')
  String? identifier;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'FullName')
  String? fullName;

  EzLabel({this.identifier, this.name, this.fullName});

  factory EzLabel.fromJson(Map<String, dynamic> json) => _$EzLabelFromJson(json);

  Map<String, dynamic> toJson() => _$EzLabelToJson(this);
}
