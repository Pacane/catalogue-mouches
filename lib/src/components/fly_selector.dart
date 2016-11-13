import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';
import 'fly_selector_item.dart';

class FlySelector extends StatelessWidget {
  final GlobalKey<ScrollableState> _scrollableKey =
      new GlobalKey<ScrollableState>();
  final FlyService _flyService = new FlyService(); // TODO: Replace with DI

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    return new Scaffold(
        appBar: new AppBar(title: new Text('Toutes les mouches')),
        body: new Column(children: [
          new Flexible(
              child: new ScrollableGrid(
                  scrollableKey: _scrollableKey,
                  delegate: new FixedColumnCountGridDelegate(
                      columnCount: orientation == Orientation.portrait ? 2 : 3,
                      rowSpacing: 4.0,
                      columnSpacing: 4.0,
                      padding: const EdgeInsets.all(4.0),
                      tileAspectRatio:
                          (orientation == Orientation.portrait) ? 1.0 : 1.3),
                  children: _flyService
                      .getFlies()
                      .map((Fly f) => new FlySelectorItem(f))))
        ]));
  }
}
