import 'package:flutter/material.dart';
import 'package:catalogue_mouches/domain.dart';
import 'fly_selector_item.dart';

class FlySelector extends StatelessWidget {
  final FlyService _flyService = FlyService(); // TODO: Replace with DI

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text('Toutes les mouches')),
      body: Column(
        children: [
          Flexible(
              child: GridView.count(
                  crossAxisCount:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 3,
                  scrollDirection: Axis.vertical,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  padding: EdgeInsets.all(4.0),
                  children: _flyService
                      .getFlies()
                      .map((Fly f) => FlySelectorItem(f))
                      .toList()))
        ],
      ),
    );
}
