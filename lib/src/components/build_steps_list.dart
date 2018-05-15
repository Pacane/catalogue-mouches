import 'package:flutter/material.dart';
import 'package:catalogue_mouches/domain.dart';
import 'step_widget.dart';

class BuildStepsList extends StatelessWidget {
  final List<BuildStep> steps;

  BuildStepsList(this.steps);

  @override
  Widget build(BuildContext context) {
    final stepsWidgets = List.generate(steps.length, (i) => i).map((int index) {
      final step = steps[index];
      return StepWidget(
        step.text,
        notes: step.notes,
        pictureUri: step.photo?.resourceUri,
        stepNumber: index + 1,
      );
    });

    return ListView(children: stepsWidgets.toList());
  }
}
