import 'dart:convert';
import 'dart:async';
import '../models/total_stats.dart';
import 'package:http/http.dart' as http;
import '../models/response.dart';

class CovidService {
  CovidService._privateConstructor();
  static final CovidService instance = CovidService._privateConstructor();

  static var baseUrl =
      'https://services1.arcgis.com/0MSEUqKaxRlEPj5g/arcgis/rest/services/ncov_cases/FeatureServer/1/query';

  static String get totalCaseUrl {
    return '$baseUrl?f=json&where=Confirmed%20%3E%200&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22,%22onStatisticField%22%3A%22Confirmed%22,%22outStatisticFieldName%22%3A%22value%22%7D%5D&cacheHint=false';
  }

  static String get totalRecoveredUrl {
    return '$baseUrl?f=json&where=Confirmed%20%3E%200&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22,%22onStatisticField%22%3A%22Recovered%22,%22outStatisticFieldName%22%3A%22value%22%7D%5D&cacheHint=false';
  }

  static String get totalFatalityUrl {
    return '$baseUrl?f=json&where=Confirmed%20%3E%200&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22:%22sum%22,%22onStatisticField%22:%22Deaths%22,%22outStatisticFieldName%22:%22value%22%7D%5D&cacheHint=false';
  }

  Future<TotalCount> fetchAllTotalCount() async {
    final confirmedJson = await _fetchJSON(totalCaseUrl);
    final recoveredJson = await _fetchJSON(totalRecoveredUrl);
    final deathsJson = await _fetchJSON(totalFatalityUrl);

    final confirmed = CoronaTotalCountResponse.fromJson(confirmedJson)
        .features
        .first
        .attributes
        .value;

    final deaths = CoronaTotalCountResponse.fromJson(deathsJson)
        .features
        .first
        .attributes
        .value;

    final recovered = CoronaTotalCountResponse.fromJson(recoveredJson)
        .features
        .first
        .attributes
        .value;

    return TotalCount(
        confirmed: confirmed, deaths: deaths, recovered: recovered);
  }
}

Future<dynamic> _fetchJSON(String url) async {
  final response =
      await http.get(url).timeout(Duration(seconds: 25), onTimeout: () {
    throw Error();
  });
  return json.decode(response.body);
}
