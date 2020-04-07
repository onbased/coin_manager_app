import 'package:coin_manager/imports.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widgets/portfolio.dart';

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

  Widget _buildDashboardCard(Key key) {
    return Card(
      elevation: 5,
      // child: ListView.builder(
      //   itemCount: 2,
      //   itemBuilder: (context, index) {},
      // ),
      child: PortfolioWidget(key: key),
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
        maxCrossAxisExtent: 550,
        children: <Widget>[
          _buildDashboardCard(ValueKey(1)),
          // _buildDashboardCard(ValueKey(2)),
          // _buildDashboardCard(ValueKey(3)),
          // _buildDashboardCard(ValueKey(4)),
          // _buildDashboardCard(ValueKey(5)),
        ],
        staggeredTiles: [
          StaggeredTile.fit(2),
          // StaggeredTile.fit(2),
          // StaggeredTile.fit(2),
          // StaggeredTile.fit(2),
          // StaggeredTile.fit(2),
        ],
      ),
    );
  }
}
