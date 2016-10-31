import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting
        // the app, try changing the primarySwatch below to Colors.green
        // and press "r" in the console where you ran "flutter run".
        // We call this a "hot reload". Notice that the counter didn't
        // reset back to zero -- the application is not restarted.
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful,
  // meaning that it has a State object (defined below) that contains
  // fields that affect how it looks.

  // This class is the configuration for the state. It holds the
  // values (in this case the title) provided by the parent (in this
  // case the App widget) and used by the build method of the State.
  // Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that
      // something has changed in this State, which causes it to rerun
      // the build method below so that the display can reflect the
      // updated values. If we changed _counter without calling
      // setState(), then the build method would not be called again,
      // and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that
        // was created by the App.build method, and use it to set
        // our appbar title.
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
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma tells the Dart formatter to use
      // a style that looks nicer for build methods.
    );
  }
}
