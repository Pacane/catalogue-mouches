import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';
import 'image_dialog.dart';

class PartsList extends StatelessWidget {
  List<Part> parts;

  PartsList(this.parts);

  Future<dynamic> _showSimulationImageDialog(BuildContext c, Part p) =>
      showDialog(
          context: c, child: new ImageDialog(resourceUri: p.photo.resourceUri));

  @override
  Widget build(BuildContext context) {
    return new MaterialList(
        children: ListItem.divideItems(
            context: context,
            items: parts.map((Part part) {
              return new ListItem(
                title: new Text(part.name),
                subtitle: part.options.isEmpty
                    ? null
                    : new Text(part.options.join(', ')),
                trailing: part.photo == null
                    ? null
                    : new IconButton(
                        icon: new Icon(Icons.photo),
                        onPressed: () =>
                            _showSimulationImageDialog(context, part)),
              );
            })));
  }
}
