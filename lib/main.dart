import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'fly_selector.dart';

void main() {
  runApp(new App());
}

EventBus eventBus = new EventBus();

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  State createState() {
    return new AppState();
  }
}

class AppState extends State<App> {
  int timesButtonClicked = 0;
  String title = 'Mouches';
  String route = '/';

  AppState();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(routes: _kRoutes);
  }
}

wrapInScaffold(Widget w) => new Scaffold(
    appBar: new AppBar(
        title: new Text('Mouches'), leading: new Icon(Icons.android)),
    body: new Padding(padding: const EdgeInsets.all(16.0), child: w));

final Map<String, WidgetBuilder> _kRoutes = <String, WidgetBuilder>{
  '/': (BuildContext c) => wrapInScaffold(new FlySelector())
};
