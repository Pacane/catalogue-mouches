import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';

class FlyOverview extends StatelessWidget {
  final Fly fly;

  FlyOverview(this.fly);

  ListItem _buildOverviewRow(String title, String subtitle) =>
      new ListItem(title: new Text(title), subtitle: new Text(subtitle));

  List<ListItem> _buildItemsToDisplay() {
    final itemsToDisplay = <ListItem>[];

    itemsToDisplay.add(_buildOverviewRow('Nom', fly.name));
    itemsToDisplay.add(_buildOverviewRow('Type', fly.type.typeAsString));
    if (fly.simulates != null) {
      itemsToDisplay.add(_buildOverviewRow('Imite', fly.simulates));
    }

    return itemsToDisplay;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialList(
        children: ListItem.divideItems(
            context: context, items: _buildItemsToDisplay()));
  }
}
