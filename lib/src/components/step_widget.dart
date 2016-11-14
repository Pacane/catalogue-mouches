import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'image_dialog.dart';
import '../utils.dart';

class StepWidget extends StatelessWidget {
  final String mainText;
  final String pictureUri;
  final List<String> notes;
  final int stepNumber;

  StepWidget(
    this.mainText, {
    this.pictureUri,
    this.notes: const <String>[],
    @required this.stepNumber,
  });

  List<Widget> _buildNotes(BuildContext context) {
    final theme = Theme.of(context);

    final notesWidgets = notes.map/*<Widget>*/((String note) {
      return new Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Text(note, style: theme.textTheme.caption),
      );
    });

    final notesWidgetsWithDividers = ListItem
        .divideItems(context: context, items: notesWidgets.toList())
        .toList();

    return notesWidgetsWithDividers;
  }

  @override
  Widget build(BuildContext context) {
    final notesWidgets = _buildNotes(context);

    return new Card(
      child: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          children: [
            new CircleAvatar(child: new Text(stepNumber.toString())),
            new Flexible(
                child: new Block(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    children: [new Text(mainText), notesWidgets]
                        .fold([], partiallyFlattenList))),
            pictureUri == null
                ? null
                : new IconButton(
                    icon: new Icon(Icons.photo),
                    onPressed: () => ImageDialog.showImageDialog(
                        context, pictureUri))
          ]..removeWhere((w) => w == null),
        ),
      ),
    );
  }
}
