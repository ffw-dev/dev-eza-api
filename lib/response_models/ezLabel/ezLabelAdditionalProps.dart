import 'package:json_annotation/json_annotation.dart';

part 'ezLabelAdditionalProps.g.dart';

@JsonSerializable(explicitToJson: true)
class EzLabelAdditionalProps {
  @JsonKey(name: 'AdditionalProp1')
  String? additionalProp1;
  @JsonKey(name: 'AdditionalProp2')
  String? additionalProp2;
  @JsonKey(name: 'AdditionalProp3')
  String? additionalProp3;

  EzLabelAdditionalProps({this.additionalProp1, this.additionalProp2, this.additionalProp3});

  factory EzLabelAdditionalProps.fromJson(Map<String, dynamic> json) => _$EzLabelAdditionalPropsFromJson(json);

  Map<String, dynamic> toJson() => _$EzLabelAdditionalPropsToJson(this);
}
