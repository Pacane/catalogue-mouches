import 'package:flutter/material.dart';
import 'package:mouches/src/domain/fly.dart';
import 'package:mouches/src/components/fly_grid_photo.dart';
import 'package:mouches/src/services/fly_service.dart';

class FlySelector extends StatelessWidget {
  final GlobalKey<ScrollableState> _scrollableKey =
      new GlobalKey<ScrollableState>();
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Flexible(
          child: new ScrollableList(
              scrollableKey: _scrollableKey,
              itemExtent: 250.0,
              children: FlyService.getFlies().map((Fly f) =>
                  new FlyGridPhoto(f))))
    ]);
  }
}
