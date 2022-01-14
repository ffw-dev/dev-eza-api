abstract class SerializableModel {
  factory SerializableModel.fromJson(Map<String, dynamic> json) => SerializableModel.fromJson(json);
  Map<String, dynamic> toJson();
}