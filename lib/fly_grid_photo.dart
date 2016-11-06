import 'package:flutter/material.dart';
import 'package:mouches/fly.dart';

class FlyGridPhoto extends StatelessWidget {
  final Photo photo;

  FlyGridPhoto(this.photo);

  @override
  Widget build(BuildContext context) {
    return new Hero(
        tag: photo.resourceUri,
        child: new Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: new ClipRect(
                child:
                    new Image.asset(photo.resourceUri, fit: ImageFit.fill))));
  }
}
