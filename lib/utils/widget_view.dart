import 'package:coin_manager/imports.dart';

// Concept of Widget View: https://blog.gskinner.com/archives/2020/02/flutter-widgetview-a-simple-separation-of-layout-and-logic.html

abstract class StatefulView<TWidget extends StatefulWidget,
    TState extends State<TWidget>> extends StatelessWidget {
  final TState state;
  TWidget get widget => state.widget;
  BuildContext get context => state.context;

  const StatefulView(this.state, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context);
}

abstract class StatelessView<TWidget extends StatelessWidget>
    extends StatelessWidget {
  final TWidget widget;

  const StatelessView(this.widget, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context);
}
