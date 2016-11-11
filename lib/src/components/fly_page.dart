import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';

class FlyPage extends StatelessWidget {
  final Fly fly;

  FlyPage(this.fly);

  String get photoUri => fly.photo.resourceUri;

  final List<IconData> icons = <IconData>[
    Icons.info,
    Icons.shopping_cart,
    Icons.build,
  ];

  final Map<IconData, String> labels = <IconData, String>{
    Icons.info: 'Informations',
    Icons.shopping_cart: 'Matériel',
    Icons.build: 'Montage',
  };

  @override
  Widget build(BuildContext context) {
    return new TabBarSelection(
        values: icons,
        child: new Scaffold(
            appBar: new AppBar(
                title: new Text(fly.name),
                bottom: new TabBar<IconData>(
                    isScrollable: true,
                    labels: new Map.fromIterable(icons,
                        value: (IconData icon) => new TabLabel(
                            text: labels[icon].toUpperCase(),
                            icon: new Icon(icon))))),
            body: new TabBarView<IconData>(children: <Widget>[
              new Container(
                  key: new ObjectKey(Icons.info),
                  padding: const EdgeInsets.all(12.0),
                  child: new Text('Overview')),
              new Container(
                  key: new ObjectKey(Icons.shopping_cart),
                  padding: const EdgeInsets.all(12.0),
                  child: new MaterialList(
                      children: ListItem.divideItems(
                          context: context,
                          items: fly.parts.map((Part part) {
                            return new ListItem(
                                title: new Text(part.name),
                                subtitle: part.options.isEmpty
                                    ? null
                                    : new Text(part.options.join(', ')));
                          })))),
              new Container(
                  key: new ObjectKey(Icons.build),
                  padding: const EdgeInsets.all(12.0),
                  child: new Text('Build')),
            ])));
  }
}
