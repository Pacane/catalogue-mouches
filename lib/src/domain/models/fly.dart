import 'photo.dart';
import 'install_step.dart';
import 'part.dart';

class Fly {
  final Photo photo;
  final String name;
  final List<InstallStep> steps;
  final List<Part> parts;

  Fly(this.name, this.photo, this.steps, this.parts);
}
