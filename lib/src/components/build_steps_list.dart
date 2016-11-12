import 'package:flutter/material.dart';
import 'package:mouches/domain.dart';
import 'step_widget.dart';

class BuildStepsList extends StatelessWidget {
  final List<BuildStep> steps;

  BuildStepsList(this.steps);

  @override
  Widget build(BuildContext context) {
    final stepsWidgets =
        new List.generate(steps.length, (i) => i).map((int index) {
      final step = steps[index];
      return new StepWidget(
        step.text,
        notes: step.notes,
        stepNumber: index + 1,
      );
    });

    return new Block(children: stepsWidgets.toList());
  }
}
