import 'package:coin_manager/imports.dart';

import 'widgets/portfolio_kchart.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageController createState() => _DashboardPageController();
}

class _DashboardPageController extends State<DashboardPage> {
  // @override
  // void initState() {
  //   super.initState();
  // }

  // Write event handlers and functionality here

  @override
  Widget build(BuildContext context) => _DashboardPageView(this);
}

class _DashboardPageView
    extends StatefulView<DashboardPage, _DashboardPageController> {
  _DashboardPageView(_DashboardPageController state) : super(state);

  @override
  Widget build(BuildContext context) {
    // Write UI code here
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: PortfolioCandlestickChartWidget(),
    );
  }
}
