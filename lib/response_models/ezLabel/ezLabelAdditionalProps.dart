import 'package:json_annotation/json_annotation.dart';

part 'ezLabelAdditionalProps.g.dart';

@JsonSerializable(explicitToJson: true)
class EzLabelAdditionalProps {
  @JsonKey(name: 'AdditionalProp1')
  String? additionalProp1;

  EzLabelAdditionalProps({this.additionalProp1});

  factory EzLabelAdditionalProps.fromJson(Map<String, dynamic> json) => _$EzLabelAdditionalPropsFromJson(json);

  Map<String, dynamic> toJson() => _$EzLabelAdditionalPropsToJson(this);
}
