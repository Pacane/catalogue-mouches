import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'package:catalogue_mouches/domain.dart';
import 'package:catalogue_mouches/src/components/fly_selector.dart';
import 'package:catalogue_mouches/src/domain/models/fly.dart';
import 'package:catalogue_mouches/src/components/fly_page.dart';
import 'package:slugify/slugify.dart';

void main() {
  runApp(App());
}

EventBus eventBus = EventBus();

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  State createState() => AppState();
}

class AppState extends State<App> {
  AppState();

  @override
  Widget build(BuildContext context) =>
      MaterialApp(title: 'Montage de mouche', routes: _kRoutes());
}

Map<String, WidgetBuilder> _kRoutes() {
  final flies = FlyService().getFlies();
  // TODO: Use DI
  final sluggifier = Slugify();

  final routes = <String, WidgetBuilder>{
    '/': (BuildContext c) => FlySelector(),
  };

  flies.forEach((Fly f) {
    final flySlug = sluggifier.slugify(f.name);
    routes.putIfAbsent('/fly/$flySlug', () => (BuildContext c) => FlyPage(f));
  });

  return routes;
}
