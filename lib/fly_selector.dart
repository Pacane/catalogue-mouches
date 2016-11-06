import 'package:flutter/material.dart';
import 'package:flutter_sample/fly_grid_photo.dart';

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
              children: <FlyGridPhoto>[
            new FlyGridPhoto(new Photo('lib/wooly.png', 'Woolly Bugger')),
            new FlyGridPhoto(
                new Photo('lib/black_woolly_bugger.jpg', 'Wooly Bugger')),
            new FlyGridPhoto(
                new Photo('lib/black_woolly_bugger.jpg', 'Wooly Bugger')),
            new FlyGridPhoto(
                new Photo('lib/black_woolly_bugger.jpg', 'Wooly Bugger')),
            new FlyGridPhoto(
                new Photo('lib/black_woolly_bugger.jpg', 'Wooly Bugger')),
          ]))
    ]);
  }
}
