import 'package:flutter/material.dart';

TableRow _buildItemRow(String left, String right) {
  return new TableRow(children: <Widget>[
    new Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: new Text(left, style: itemAmountStyle)),
    new Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: new Text(right, style: itemStyle))
  ]);
}

TableRow _buildItemRowWithRightWidget(String left, Widget right) {
  return new TableRow(children: <Widget>[
    new Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: new Text(left, style: itemAmountStyle)),
    new Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0), child: right)
  ]);
}

class TitleStyle extends TextStyle {
  const TitleStyle({
  double fontSize: 16.0,
  FontWeight fontWeight,
  Color color: Colors.black87,
  double letterSpacing,
  double height,
  })
      : super(
      inherit: false,
      color: color,
      fontFamily: 'Raleway',
      fontSize: fontSize,
      fontWeight: fontWeight,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: letterSpacing,
      height: height,
      );
}

final TextStyle headingStyle = const TitleStyle(
    fontSize: 16.0, fontWeight: FontWeight.bold, height: 24.0 / 15.0);

final TextStyle itemStyle =
const TextStyle(fontSize: 15.0, height: 24.0 / 15.0);
final ThemeData _kTheme = new ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.green,
    accentColor: Colors.redAccent[200]);

final TextStyle itemAmountStyle = new TextStyle(
    fontSize: 15.0, color: _kTheme.primaryColor, height: 24.0 / 15.0);

class MyApp extends StatelessWidget {
  final String appTitle = 'Catalogue de mouches';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: appTitle,
        theme: new ThemeData(
            primarySwatch: Colors.green,
            ),
        home: new MyHomePage(title: appTitle),
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text(config.title),
            ),
        body: new Column(children: <Widget>[
          new ClipRect(
              child: new Image.asset('lib/wooly.png', fit: ImageFit.fill)),
          new Material(
              child: new Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: new Table(children: [
                    _buildItemRow('Nom', 'Wooly bugger'),
                    _buildItemRow('Insecte imité', 'Sangsue'),
                    _buildItemRowWithRightWidget(
                        'Matériel',
                        new Table(children: [
                          new TableRow(
                              children: [new Text('Wooly bugger marabou')]),
                          new TableRow(children: [new Text('Chenille')]),
                          new TableRow(
                              children: [new Text('Wooly bugger hackle')]),
                          new TableRow(
                              children: [new Text('(Optionel) Tincelle')]),
                        ]))
                  ]))),
        ]),
        );
  }
}
