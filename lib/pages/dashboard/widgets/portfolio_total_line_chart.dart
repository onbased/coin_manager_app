import 'dart:async';
import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:coin_manager/imports.dart';
import 'package:coin_manager/utils/series_generator.dart';

class PortfolioTotalLineChartWidget extends StatefulWidget {
  PortfolioTotalLineChartWidget({Key key}) : super(key: key);

  @override
  _PortfolioTotalLineChartWidgetController createState() =>
      _PortfolioTotalLineChartWidgetController();
}

class _PortfolioTotalLineChartWidgetController
    extends State<PortfolioTotalLineChartWidget> {
  Future<DataSeries<double, double>> data;
  num sliderDomainValue;
  String sliderDragState;
  Point<int> sliderPosition;

  @override
  void initState() {
    super.initState();
    _loadDataSeries();
  }

  void _loadDataSeries() {
    data = Future.value(SeriesGenerator.generateTrend());
  }

  void onSliderChange(Point<int> point, dynamic domain, String roleId,
      charts.SliderListenerDragState dragState) {
    // Request a build.
    void rebuild(Duration _) {
      setState(() {
        sliderDomainValue = ((domain as double) * 10).round() / 10;
        sliderDragState = dragState.toString();
        sliderPosition = point;
      });
    }

    WidgetsBinding.instance.addPostFrameCallback(rebuild);
  }

  void onSelectionChanged(charts.SelectionModel model) {
    final selectedDatum = model.selectedDatum;

    setState(() {
      sliderDomainValue =
          ((selectedDatum[0].datum.value as double) * 10).round() / 10;
    });
  }

  @override
  void reassemble() {
    super.reassemble();
    _loadDataSeries();
  }

  @override
  Widget build(BuildContext context) =>
      _PortfolioTotalLineChartWidgetView(this);
}

class _PortfolioTotalLineChartWidgetView extends StatefulView<
    PortfolioTotalLineChartWidget, _PortfolioTotalLineChartWidgetController> {
  _PortfolioTotalLineChartWidgetView(
      _PortfolioTotalLineChartWidgetController state)
      : super(state);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: state.data,
        builder: (context, snapshot) {
          DataSeries<double, double> data =
              snapshot.data as DataSeries<double, double>;

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
                constraints: BoxConstraints(maxHeight: 500),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 300,
                      child: charts.LineChart(
                        <charts.Series<MapEntry<double, double>, num>>[
                          charts.Series<MapEntry<double, double>, num>(
                            id: 'Sales',
                            domainFn: (sales, _) => sales.key,
                            measureFn: (sales, _) => sales.value,
                            data: data.dataPoints,
                            // labelAccessorFn: (row, _) =>
                            //     '${row.key}: ${row.value}',
                          )
                        ],
                        // animate: true,
                        behaviors: [
                          charts.Slider(
                              initialDomainValue: 1,
                              // eventTrigger: charts.SelectionTrigger.tapAndDrag,
                              onChangeCallback: state.onSliderChange),
                        ],
                        selectionModels: [
                          charts.SelectionModelConfig(
                            type: charts.SelectionModelType.info,
                            changedListener: state.onSelectionChanged,
                          )
                        ],
                      ),
                    ),
                    if (state.sliderDomainValue != null)
                      Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                              'Slider domain value: ${state.sliderDomainValue}')),
                    if (state.sliderPosition != null)
                      Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                              'Slider position: ${state.sliderPosition.x}, ${state.sliderPosition.y}')),
                    if (state.sliderDragState != null)
                      Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                              'Slider drag state: ${state.sliderDragState}')),
                  ],
                ),
              );
          }

          return null;
        });
  }
}
