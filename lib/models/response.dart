

import 'package:json_annotation/json_annotation.dart';

import './features.dart';

part 'response.g.dart';

@JsonSerializable()
class CoronaTotalCountResponse {
  final List<CoronaTotalCountFeatures> features;

  CoronaTotalCountResponse({this.features});

  factory CoronaTotalCountResponse.fromJson(Map<String, dynamic> json) =>
      _$CoronaTotalCountResponseFromJson(json);

  Map<String, dynamic> toJSON() => _$CoronaTotalCountResponseToJson(this);
}
