import 'dart:math';

enum SeriesTrend {
  positive,
  negative,
}

class DataSeries<TX, TY> {
  String name;
  List<MapEntry<TX, TY>> dataPoints;

  DataSeries({this.dataPoints, this.name});
}

abstract class SeriesGenerator {
  static DataSeries<double, double> generateTrend({
    int count = 100,
    double yFirstValue = 0,
    double yDeltaVariance = 10,
    double xFirstValue = 0,
    double xDelta = 0.5,
    double xDeltaVariance = 0.5,
    SeriesTrend trend = SeriesTrend.positive,
    double yMinValue,
    double yMaxValue,
    int randomSeed,
    String seriesName,
  }) {
    Map<double, double> data = {xFirstValue: yFirstValue};
    Random rand = Random(randomSeed);
    double direction = trend == SeriesTrend.positive ? 1 : -1;

    yMinValue ??= yFirstValue - yDeltaVariance;
    yMaxValue ??= yFirstValue + yDeltaVariance;

    for (int i = 0; i < count; i++) {
      double oldDirection = direction;
      direction = sin(xFirstValue);
      direction =
          direction < 0 ? direction.floorToDouble() : direction.ceilToDouble();

      double delta = rand.nextDouble() * yDeltaVariance;
      yFirstValue += delta * direction;

      if (trend == SeriesTrend.positive) {
        if (yFirstValue < yMinValue) yFirstValue = yMinValue;
        if (oldDirection < direction) yMinValue = yFirstValue;
      } else if (trend == SeriesTrend.negative) {
        if (yFirstValue > yMaxValue) yFirstValue = yMaxValue;
        if (oldDirection > direction) yMaxValue = yFirstValue;
      }

      xFirstValue += xDelta + sin(rand.nextDouble()) * xDeltaVariance;
      data[xFirstValue] = yFirstValue;
    }

    return DataSeries(
      dataPoints: data.entries.toList()
        ..sort((e1, e2) => e1.key.compareTo(e2.key)),
      name: seriesName,
    );
  }

  static DataSeries<DateTime, double> generateDateTimeTrend({
    int count = 100,
    double yFirstValue = 0,
    double yDeltaVariance = 10,
    DateTime xFirstValue,
    Duration xDelta,
    Duration xDeltaVariance,
    SeriesTrend trend = SeriesTrend.positive,
    double yMinValue,
    double yMaxValue,
    int randomSeed,
    String seriesName,
  }) {
    xFirstValue ??= DateTime.now();
    xDelta ??= Duration(days: 1);
    xDeltaVariance ??= Duration(hours: 12);

    DataSeries<double, double> data = generateTrend(
      count: count,
      yFirstValue: yFirstValue,
      yDeltaVariance: yDeltaVariance,
      xFirstValue: 0,
      xDelta: xDelta.inMicroseconds.toDouble(),
      xDeltaVariance: xDeltaVariance.inMicroseconds.toDouble(),
      trend: trend,
      yMinValue: yMinValue,
      yMaxValue: yMaxValue,
      randomSeed: randomSeed,
    );

    return DataSeries(
      dataPoints: data.dataPoints
          .map((dataPoint) => MapEntry(
              xFirstValue.add(Duration(microseconds: dataPoint.key.floor())),
              dataPoint.value))
          .toList(),
      name: seriesName,
    );
  }
}
