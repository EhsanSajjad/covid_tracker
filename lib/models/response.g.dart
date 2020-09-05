// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoronaTotalCountResponse _$CoronaTotalCountResponseFromJson(
    Map<String, dynamic> json) {
  return CoronaTotalCountResponse(
    features: (json['features'] as List)
        ?.map((e) => e == null
            ? null
            : CoronaTotalCountFeatures.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CoronaTotalCountResponseToJson(
        CoronaTotalCountResponse instance) =>
    <String, dynamic>{
      'features': instance.features,
    };
