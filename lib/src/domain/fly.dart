class Fly {
  final Photo photo;
  final String name;
  final List<InstallStep> steps;

  Fly(this.name, this.photo, this.steps);
}

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

class Photo {
  final String resourceUri;
  final String title;

  Photo(this.resourceUri, this.title);
}
