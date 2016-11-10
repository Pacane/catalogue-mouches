import 'package:flutter/material.dart';
import 'package:mouches/src/domain/fly.dart';

class FlyPage extends StatelessWidget {
  final Fly fly;

  FlyPage(this.fly);

  String get photoUri => fly.photo.resourceUri;

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new ClipRect(child: new Image.asset(photoUri, fit: ImageFit.fill)),
      new ListItem(title: new Text('Matériel')),
    ]);
  }
}
