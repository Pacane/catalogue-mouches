import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'package:mouches/domain.dart';
import 'package:mouches/src/components/fly_selector.dart';
import 'package:mouches/src/domain/models/fly.dart';
import 'package:mouches/src/components/fly_page.dart';
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
  // TODO: Use DI
  var sluggifier = new Slugify();

  var routes = <String, WidgetBuilder>{
    '/': (BuildContext c) => wrapInScaffold(new FlySelector(), 'Mouches'),
  };

  flies.forEach((Fly f) {
    var flySlug = sluggifier.slugify(f.name);
    routes.putIfAbsent('/fly/$flySlug',
        () => (BuildContext c) => wrapInScaffold(new FlyPage(f), f.name));
  });

  return routes;
}
