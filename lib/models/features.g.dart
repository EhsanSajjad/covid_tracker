// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaTotalCountFeatures _$CoronaTotalCountFeaturesFromJson(
    Map<String, dynamic> json) {
  return CoronaTotalCountFeatures(
    attributes: json['attributes'] == null
        ? null
        : CoronaTotalCountAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoronaTotalCountFeaturesToJson(
        CoronaTotalCountFeatures instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };
