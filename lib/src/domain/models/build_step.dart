import 'photo.dart';

class BuildStep {
  final String text;
  final List<String> notes = <String>[];
  final Photo photo;

  BuildStep(this.text, {List<String> notes, this.photo}) {
    if (notes != null) {
      this.notes.addAll(notes);
    }
  }
}
