import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'package:mouches/fly.dart';
import 'package:mouches/fly_grid_photo.dart';
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

  AppState();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text(title), leading: new Icon(Icons.android)),
        body: new Padding(
            padding: const EdgeInsets.all(16.0), child: new FlySelector()));
  }
}

