import 'photo.dart';
import 'install_step.dart';

class Fly {
  final Photo photo;
  final String name;
  final List<InstallStep> steps;

  Fly(this.name, this.photo, this.steps);
}
