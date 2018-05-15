import 'dart:async';
import 'package:flutter/material.dart';
import 'package:catalogue_mouches/domain.dart';
import 'image_dialog.dart';

class PartsList extends StatelessWidget {
  final List<Part> parts;

  PartsList(this.parts);

  Future<dynamic> _showSimulationImageDialog(BuildContext c, Part p) =>
      showDialog(
        context: c,
        builder: (context) => ImageDialog(resourceUri: p.photo.resourceUri),
      );

  @override
  Widget build(BuildContext context) => ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: parts
              .map(
                (part) => ListTile(
                      title: Text(part.name),
                      subtitle: part.options.isEmpty
                          ? null
                          : Text(part.options.join(', ')),
                      trailing: part.photo == null
                          ? null
                          : IconButton(
                              icon: Icon(Icons.photo),
                              onPressed: () =>
                                  _showSimulationImageDialog(context, part),
                            ),
                    ),
              )
              .toList(),
        ).toList(),
      );
}
