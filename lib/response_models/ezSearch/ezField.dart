
import 'package:json_annotation/json_annotation.dart';

part 'ezField.g.dart';

@JsonSerializable(explicitToJson: true)
class EzFields {
  String? key;
  String? value;

  EzFields({this.key, this.value});

  factory EzFields.fromJson(Map<String, dynamic> json) => _$EzFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$EzFieldsToJson(this);
}