import 'package:flutter/material.dart';
import 'package:mouches/fly.dart';
import 'package:slugify/slugify.dart';
import 'dart:async';

class FlyGridPhoto extends StatelessWidget {
  final Fly fly;
  final Slugify _slugifier = new Slugify();

  FlyGridPhoto(this.fly);

  String get photoUri => fly.photo.resourceUri;
  String get flySlug => _slugifier.slugify(fly.name);

  Future<Null> _onTap(BuildContext context, Key key) async {
    await Navigator.pushNamed(context, '/fly');
  }

  @override
  Widget build(BuildContext context) {
    return new ListItem(
        onTap: () => _onTap(context, new Key('mouche')),
        title: new Hero(
            tag: photoUri,
            child: new Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: new ClipRect(
                    child: new Image.asset(photoUri, fit: ImageFit.fill)))));
  }
}
