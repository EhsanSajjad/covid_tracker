import 'package:json_annotation/json_annotation.dart';

import './attributes.dart';

part 'features.g.dart';

@JsonSerializable()
class CoronaTotalCountFeatures {
  final CoronaTotalCountAttributes attributes;

  CoronaTotalCountFeatures({this.attributes});

  factory CoronaTotalCountFeatures.fromJson(Map<String, dynamic> json) =>
      _$CoronaTotalCountFeaturesFromJson(json);

  Map<String, dynamic> toJSON() => _$CoronaTotalCountFeaturesToJson(this);
}
