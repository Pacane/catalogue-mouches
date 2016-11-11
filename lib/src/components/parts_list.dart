import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';

class PartsList extends StatelessWidget {
  List<Part> parts;

  PartsList(this.parts);
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
                      : new Text(part.options.join(', ')));
            })));
  }
}
