import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:mouches/domain.dart';
import 'step_widget.dart';

class BuildStepsList extends StatelessWidget {
  final List<BuildStep> steps;

  BuildStepsList(this.steps);
  @override
  Widget build(BuildContext context) {
    var stepsWidgets = steps.map/*<Widget>*/((BuildStep step) {
      return new StepWidget(step.text, notes: step.notes);
    });

    return new Block(children: stepsWidgets.toList());
  }
}
