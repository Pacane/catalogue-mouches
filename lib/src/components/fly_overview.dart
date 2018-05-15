import 'package:flutter/material.dart';
import 'package:catalogue_mouches/domain.dart';
import 'image_dialog.dart';

class FlyOverview extends StatelessWidget {
  final Fly fly;

  FlyOverview(this.fly);

  ListTile _buildSimpleOverviewRow(String title, String subtitle) => ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      );

  List<ListTile> _buildItemsToDisplay(BuildContext c) {
    final itemsToDisplay = <ListTile>[];
    itemsToDisplay.add(_buildSimpleOverviewRow('Nom', fly.name));
    itemsToDisplay.add(_buildSimpleOverviewRow('Type', fly.type.typeAsString));
    itemsToDisplay.add(_buildSimpleOverviewRow(
        'Difficulté', fly.difficulty.difficultyAsString));
    if (fly.simulates != null) {
      itemsToDisplay.add(ListTile(
        title: Text('Imite'),
        subtitle: Text(fly.simulates.name),
        trailing: IconButton(
          icon: Icon(Icons.photo),
          onPressed: () =>
              ImageDialog.showImageDialog(c, fly.simulates.photo.resourceUri),
        ),
      ));
    }

    return itemsToDisplay;
  }

  @override
  Widget build(BuildContext context) => ListView(
        children: ListTile
            .divideTiles(
              context: context,
              tiles: _buildItemsToDisplay(context),
            )
            .toList());
}
