import 'dart:async';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:coin_manager/imports.dart';
import 'package:coin_manager/utils/series_generator.dart';

class PortfolioGroupedBarChartWidget extends StatefulWidget {
  PortfolioGroupedBarChartWidget({Key key}) : super(key: key);

  @override
  _PortfolioTotalLineChartWidgetController createState() =>
      _PortfolioTotalLineChartWidgetController();
}

class _PortfolioTotalLineChartWidgetController
    extends State<PortfolioGroupedBarChartWidget> {
  Future<DataSeries<DateTime, double>> dataSeries1;
  Future<DataSeries<DateTime, double>> dataSeries2;

  @override
  void initState() {
    super.initState();
    _loadDataSeries();
  }

  void _loadDataSeries() {
    int count = 14;

    dataSeries1 = Future<void>.delayed(Duration(seconds: 1))
        .then((_) => SeriesGenerator.generateDateTimeTrend(
              seriesName: 'Spent',
              count: count,
              yFirstValue: 5,
              yMinValue: 0,
              yDeltaVariance: 10,
              xDeltaVariance: Duration.zero,
              randomSeed: 43,
            ));
    dataSeries2 = Future<void>.delayed(Duration(seconds: 1))
        .then((_) => SeriesGenerator.generateDateTimeTrend(
              seriesName: 'Value',
              count: count,
              yFirstValue: 2,
              yMinValue: 0,
              yDeltaVariance: 11,
              xDeltaVariance: Duration.zero,
              randomSeed: 90,
            ));
  }

  @override
  Widget build(BuildContext context) =>
      _PortfolioTotalLineChartWidgetView(this);

  @override
  void reassemble() {
    super.reassemble();

    _loadDataSeries();
  }
}

class _PortfolioTotalLineChartWidgetView extends StatefulView<
    PortfolioGroupedBarChartWidget, _PortfolioTotalLineChartWidgetController> {
  _PortfolioTotalLineChartWidgetView(
      _PortfolioTotalLineChartWidgetController state)
      : super(state);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait<DataSeries<DateTime, double>>(
            [state.dataSeries1, state.dataSeries2]),
        builder: (context, snapshot) {
          List<DataSeries<DateTime, double>> allSeries =
              snapshot.data as List<DataSeries<DateTime, double>>;

          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Something went wrong');

            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              return ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 300),
                child: charts.TimeSeriesChart(
                  <charts.Series<MapEntry<DateTime, double>, DateTime>>[
                    for (DataSeries<DateTime, double> dataSeries in allSeries)
                      charts.Series<MapEntry<DateTime, double>, DateTime>(
                        id: dataSeries.name,
                        domainFn: (date, _) => date.key,
                        measureFn: (sales, _) => sales.value,
                        data: dataSeries.dataPoints,
                        labelAccessorFn: (row, _) => '${row.key}: ${row.value}',
                      )
                  ],
                  animate: true,
                  customSeriesRenderers: [],
                  defaultRenderer: charts.BarRendererConfig<DateTime>(),
                  behaviors: [
                    charts.SeriesLegend(
                      position: charts.BehaviorPosition.top,
                    ),
                  ],
                ),
              );
          }

          return null;
        });
  }
}
