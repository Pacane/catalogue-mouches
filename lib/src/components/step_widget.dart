import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  final String mainText;
  final String pictureUri;
  final List<String> notes;

  StepWidget(this.mainText, {this.pictureUri, this.notes: const <String>[]});

  Iterable<Widget> _buildNotes(BuildContext context) {
    var theme = Theme.of(context);
    var notesWidgets = notes.map/*<Widget>*/((String note) {
      return new Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: new Text(note, style: theme.textTheme.caption));
    });

    notesWidgets = ListItem
        .divideItems(context: context, items: notesWidgets.toList())
        .toList();
    return notesWidgets;
  }

  @override
  Widget build(BuildContext context) {
    Iterable<Widget> notesWidgets = _buildNotes(context);
    if (pictureUri != null) {
      return new Card(
          child: new Column(children: <Widget>[
        new Center(child: new Image.asset('lib/assets/samplehook.jpg')),
        new Block(
            padding: const EdgeInsets.all(16.0),
            children: [new Text(mainText)]..addAll(notesWidgets))
      ]));
    } else {
      return new Card(
        child: new Column(
          children: <Widget>[
            new Block(
                padding: const EdgeInsets.all(16.0),
                children: [new Text(mainText)]..addAll(notesWidgets))
          ],
        ),
      );
    }
  }
}
