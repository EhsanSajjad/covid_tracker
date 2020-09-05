import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()
class CoronaTotalCountAttributes {
  final int value;

  CoronaTotalCountAttributes({this.value});

  factory CoronaTotalCountAttributes.fromJson(Map<String, dynamic> json) =>
      _$CoronaTotalCountAttributesFromJson(json);

  Map<String, dynamic> toJSON() => _$CoronaTotalCountAttributesToJson(this);
}
