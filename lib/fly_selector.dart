import 'package:flutter/material.dart';
import 'package:mouches/fly.dart';
import 'package:mouches/fly_grid_photo.dart';
import 'package:mouches/fly_service.dart';

class FlySelector extends StatelessWidget {
  final GlobalKey<ScrollableState> _scrollableKey =
      new GlobalKey<ScrollableState>();
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Flexible(
          child: new ScrollableList(
              scrollableKey: _scrollableKey,
              itemExtent: 200.0,
              children: FlyService.getFlies().map((Fly f) =>
                  new FlyGridPhoto(new Photo(f.photo.resourceUri, f.name)))))
    ]);
  }
}
