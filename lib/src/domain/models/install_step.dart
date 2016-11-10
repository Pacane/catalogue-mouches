class InstallStep {
  final String text;
  List<InstallStep> notes;

  InstallStep(this.text, {List<InstallStep> notes}) {
    if (notes == null) {
      this.notes = <InstallStep>[];
    } else {
      this.notes.addAll(notes);
    }
  }
}
