import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';
import 'image_dialog.dart';

class FlyOverview extends StatelessWidget {
  final Fly fly;

  FlyOverview(this.fly);

  ListItem _buildSimpleOverviewRow(String title, String subtitle) =>
      new ListItem(title: new Text(title), subtitle: new Text(subtitle));

  List<ListItem> _buildItemsToDisplay(BuildContext c) {
    final itemsToDisplay = <ListItem>[];

    itemsToDisplay.add(_buildSimpleOverviewRow('Nom', fly.name));
    itemsToDisplay.add(_buildSimpleOverviewRow('Type', fly.type.typeAsString));
    if (fly.simulates != null) {
      itemsToDisplay.add(new ListItem(
          trailing: new IconButton(
              icon: new Icon(Icons.photo),
              onPressed: () => ImageDialog.showSimulationImageDialog(
                  c, fly.photo.resourceUri)),
          title: new Text('Imite'),
          subtitle: new Text(fly.simulates.name),
          onTap: () => ImageDialog.showSimulationImageDialog(
              c, fly.simulates.photo.resourceUri)));
    }

    return itemsToDisplay;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialList(
        children: ListItem.divideItems(
            context: context, items: _buildItemsToDisplay(context)));
  }
}
