import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';

class FlyPage extends StatelessWidget {
  final Fly fly;

  FlyPage(this.fly);

  String get photoUri => fly.photo.resourceUri;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(fly.name)),
        body: new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Column(children: <Widget>[
              new ClipRect(
                  child: new Image.asset(photoUri, fit: ImageFit.fill)),
              new ListItem(title: new Text('Matériel')),
            ])));
  }
}
