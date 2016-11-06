import 'package:flutter/material.dart';
import 'navigation.dart';
import 'package:event_bus/event_bus.dart';

void main() {
  runApp(new App());
}

EventBus eventBus = new EventBus();

class ChangeTitleEvent {}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  State createState() {
    return new AppState();
  }
}

class ChangeTitleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
        child: new Text('Change title!'),
        onPressed: () => eventBus.fire(new ChangeTitleEvent()));
  }
}

class AppState extends State<App> {
  int timesButtonClicked = 0;
  String title = '';

  List<String> nextTitres = ['Titre 0', 'Titre 1', 'Titre 2'];

  AppState() {
    title = nextTitres[0];

    eventBus.on(ChangeTitleEvent).listen((e) {
      timesButtonClicked++;

      if (timesButtonClicked <= 2) {
        setState(() {
          title = nextTitres[timesButtonClicked];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(title)),
        body: new Padding(
            padding: ,
            child: new ChangeTitleButton()));
  }
}
