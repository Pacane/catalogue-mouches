import 'package:flutter/material.dart';
import 'package:mouches/src/domain/models/fly.dart';
import 'package:slugify/slugify.dart';
import 'dart:async';

class FlySelectorItem extends StatelessWidget {
  final Fly fly;
  final Slugify _slugifier = new Slugify(); // TODO: Replace with DI

  FlySelectorItem(this.fly);

  String get photoUri => fly.photo.resourceUri;
  String get flySlug => _slugifier.slugify(fly.name);

  Future<Null> _onTap(BuildContext context) async {
    await Navigator.pushNamed(context, '/fly/$flySlug');
  }

  @override
  Widget build(BuildContext context) {
    final Widget image = new GestureDetector(
        onTap: () => _onTap(context),
        child: new Hero(
            key: new Key(photoUri),
            tag: photoUri,
            child: new Image.asset(photoUri, fit: ImageFit.cover)));

    return new GridTile(
        footer: new GestureDetector(
            onTap: () => _onTap(context),
            child: new GridTileBar(
              backgroundColor: Colors.black45,
              title: new _GridTitleText(fly.name),
            )),
        child: image);
  }
}

class _GridTitleText extends StatelessWidget {
  _GridTitleText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return new FittedBox(
      fit: ImageFit.scaleDown,
      alignment: FractionalOffset.centerLeft,
      child: new Text(text),
    );
  }
}
