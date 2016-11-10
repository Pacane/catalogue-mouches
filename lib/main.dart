import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'fly_selector.dart';
import 'package:mouches/fly.dart';
import 'package:mouches/fly_service.dart';
import 'package:slugify/slugify.dart';

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
  AppState();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(routes: _kRoutes());
  }
}

Widget wrapInScaffold(Widget w, String title) => new Scaffold(
    appBar: new AppBar(title: new Text(title)),
    body: new Padding(padding: const EdgeInsets.all(16.0), child: w));

Map<String, WidgetBuilder> _kRoutes() {
  var flies = FlyService.getFlies();
  var sluggifier = new Slugify();

  var routes = <String, WidgetBuilder>{
    '/': (BuildContext c) => wrapInScaffold(new FlySelector(), 'Mouches'),
    '/fly': (BuildContext c) => wrapInScaffold(new Text('In Fly!'), 'Mouche')
  };

  flies.forEach((Fly f) {
    var flySlug = sluggifier.slugify(f.name);
    routes.putIfAbsent('/fly/$flySlug',
        () => (BuildContext c) => wrapInScaffold(new Text(f.name), f.name));
  });

  return routes;
}
