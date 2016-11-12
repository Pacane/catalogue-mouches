class BuildStep {
  final String text;
  List<String> notes = <String>[];

  BuildStep(this.text, {List<String> notes}) {
    if (notes == null) {
      this.notes = <String>[];
    } else {
      this.notes.addAll(notes);
    }
  }
}
