import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';
import 'package:mouches/components.dart';

class FlySelector extends StatelessWidget {
  final GlobalKey<ScrollableState> _scrollableKey =
      new GlobalKey<ScrollableState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Mouches')),
        body: new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Column(children: <Widget>[
              new Flexible(
                  child: new ScrollableList(
                      scrollableKey: _scrollableKey,
                      itemExtent: 250.0,
                      children: FlyService
                          .getFlies()
                          .map((Fly f) => new FlyGridPhoto(f))))
            ])));
  }
}
