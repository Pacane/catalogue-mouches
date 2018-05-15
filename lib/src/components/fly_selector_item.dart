import 'package:flutter/material.dart';
import 'package:catalogue_mouches/src/domain/models/fly.dart';
import 'package:slugify/slugify.dart';
import 'dart:async';

class FlySelectorItem extends StatelessWidget {
  final Fly fly;
  final Slugify _slugifier = Slugify(); // TODO: Replace with DI

  FlySelectorItem(this.fly);

  String get photoUri => fly.photo.resourceUri;
  String get flySlug => _slugifier.slugify(fly.name);

  Future<Null> _onTap(BuildContext context) async {
    await Navigator.pushNamed(context, '/fly/$flySlug');
  }

  @override
  Widget build(BuildContext context) {
    final Widget image = GestureDetector(
      onTap: () => _onTap(context),
      child: SizedBox.expand(
        child: Hero(
            key: Key(photoUri),
            tag: photoUri,
            child: Image.asset(photoUri, fit: BoxFit.cover)),
      ),
    );

    return GridTile(
        footer: GestureDetector(
            onTap: () => _onTap(context),
            child: GridTileBar(
              backgroundColor: Colors.black45,
              title: _GridTitleText(fly.name),
            )),
        child: image);
  }
}

class _GridTitleText extends StatelessWidget {
  _GridTitleText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => FittedBox(
      fit: BoxFit.scaleDown,
      alignment: FractionalOffset.centerLeft,
      child: Text(text),
    );
}
