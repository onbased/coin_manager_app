import 'dart:async';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:coin_manager/imports.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

class PortfolioPieChartWidget extends StatefulWidget {
  PortfolioPieChartWidget({Key key}) : super(key: key);

  @override
  _PortfolioPieChartWidgetController createState() =>
      _PortfolioPieChartWidgetController();
}

class _PortfolioPieChartWidgetController
    extends State<PortfolioPieChartWidget> {
  Future<Map<String, dynamic>> data;

  @override
  void initState() {
    super.initState();
    _loadDataSeries();
  }

  void _loadDataSeries() {
    data = Future<void>.delayed(Duration(seconds: 1))
        .then((_) => <String, dynamic>{
              'BTC': 5000,
              'LTC': 900,
              'USD': 500,
              'ETH': 1500,
            });
  }

  @override
  void reassemble() {
    super.reassemble();
    _loadDataSeries();
  }

  @override
  Widget build(BuildContext context) => _PortfolioPieChartWidgetView(this);
}

class _PortfolioPieChartWidgetView extends StatefulView<PortfolioPieChartWidget,
    _PortfolioPieChartWidgetController> {
  _PortfolioPieChartWidgetView(_PortfolioPieChartWidgetController state)
      : super(state);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: state.data,
        builder: (context, snapshot) {
          Map<String, dynamic> data = snapshot.data as Map<String, dynamic>;

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
                constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
                child: charts.PieChart<dynamic>([
                  charts.Series<MapEntry<String, dynamic>, String>(
                    id: 'Currency shares',
                    domainFn: (share, _) => share.key,
                    measureFn: (share, _) => share.value as num,
                    data: data.entries.toList(),
                    // Set a label accessor to control the text of the arc label.
                    labelAccessorFn: (row, _) => '${row.key}: ${row.value}',
                  )
                ],
                    animate: true,
                    // Configure the width of the pie slices to 60px. The remaining space in
                    // the chart will be left as a hole in the center.
                    //
                    // [ArcLabelDecorator] will automatically position the label inside the
                    // arc if the label will fit. If the label will not fit, it will draw
                    // outside of the arc with a leader line. Labels can always display
                    // inside or outside using [LabelPosition].
                    //
                    // Text style for inside / outside can be controlled independently by
                    // setting [insideLabelStyleSpec] and [outsideLabelStyleSpec].
                    //
                    // Example configuring different styles for inside/outside:
                    //       new charts.ArcLabelDecorator(
                    //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
                    //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
                    defaultRenderer: charts.ArcRendererConfig<dynamic>(
                        arcWidth: 80,
                        arcRendererDecorators: [
                          charts.ArcLabelDecorator<dynamic>(
                            labelPosition: charts.ArcLabelPosition.outside,
                          )
                        ])),
              );
          }

          return null;
        });
  }
}
