import 'package:coin_manager/imports.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widgets/portfolio.dart';
import 'widgets/portfolio_grouped_bar_chart.dart';
import 'widgets/portfolio_pie_chart.dart';

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

  Widget _buildDashboardCard(Widget child) {
    return Card(
      elevation: 5,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Write UI code here
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: StaggeredGridView.extent(
        maxCrossAxisExtent: 450,
        children: <Widget>[
          _buildDashboardCard(PortfolioWidget()),
          _buildDashboardCard(PortfolioPieChartWidget()),
          _buildDashboardCard(PortfolioGroupedBarChartWidget()),
        ],
        staggeredTiles: [
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
        ],
      ),
    );
  }
}
