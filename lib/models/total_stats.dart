class TotalCount {
  final int confirmed;
  final int deaths;
  final int recovered;

  TotalCount({this.confirmed, this.deaths, this.recovered});

  String get confirmedText {
    return confirmed as String;
  }

  String get deathsText {
    return deaths as String;
  }

  String get recoveredText {
    return recovered as String;
  }

  double get recoveryRate {
    return (recovered.toDouble() / confirmed.toDouble()) * 100;
  }

  double get fatalityRate {
    return (deaths.toDouble() / confirmed.toDouble()) * 100;
  }

  String get recoveryRateText {
    return '${recoveryRate.toStringAsFixed(2)}%';
  }

  String get deathRateText {
    return '${fatalityRate.toStringAsFixed(2)}%';
  }
}
