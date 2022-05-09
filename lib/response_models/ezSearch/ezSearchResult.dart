
import 'package:json_annotation/json_annotation.dart';

import 'ezField.dart';

part 'ezSearchResult.g.dart';

@JsonSerializable(explicitToJson: true)
class EzSearchResult {
  @JsonKey(name: 'Identifier')
  String? identifier;
  @JsonKey(name: 'TypeId')
  String? typeId;
  @JsonKey(name: 'Fields')
  List<EzFields>? fields;

  EzSearchResult({this.identifier, this.typeId, this.fields});

  factory EzSearchResult.fromJson(Map<String, dynamic> json) => _$EzSearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$EzSearchResultToJson(this);
}