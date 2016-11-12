class BuildStep {
  final String text;
  final List<String> notes = <String>[];

  BuildStep(this.text, {List<String> notes}) {
    if (notes != null) {
      this.notes.addAll(notes);
    }
  }
}
