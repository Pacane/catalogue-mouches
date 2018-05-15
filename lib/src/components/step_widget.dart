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

    final notesWidgets = notes.map<Widget>((String note) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(note, style: theme.textTheme.caption),
      );
    });

    final notesWidgetsWithDividers = ListTile
        .divideTiles(context: context, tiles: notesWidgets.toList())
        .toList();

    return notesWidgetsWithDividers;
  }

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(child: Text(stepNumber.toString())),
              Flexible(
                  child: new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(mainText),
                      _buildNotes(context),
                    ].fold([], partiallyFlattenList)),
              )),
              pictureUri == null
                  ? Container()
                  : IconButton(
                      icon: Icon(Icons.photo),
                      onPressed: () =>
                          ImageDialog.showImageDialog(context, pictureUri),
                    ),
            ],
          ),
        ),
      );
}
