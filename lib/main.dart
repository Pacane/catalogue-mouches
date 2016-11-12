import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'package:mouches/domain.dart';
import 'package:mouches/src/components/fly_list.dart';
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
    return new MaterialApp(
        title: 'Montage de mouche', routes: _kRoutes());
  }
}

Map<String, WidgetBuilder> _kRoutes() {
  final flies = FlyService.getFlies();
  // TODO: Use DI
  final sluggifier = new Slugify();

  final routes = <String, WidgetBuilder>{
    '/': (BuildContext c) => new FlySelector(),
  };

  flies.forEach((Fly f) {
    final flySlug = sluggifier.slugify(f.name);
    routes.putIfAbsent(
        '/fly/$flySlug', () => (BuildContext c) => new FlyPage(f));
  });

  return routes;
}
