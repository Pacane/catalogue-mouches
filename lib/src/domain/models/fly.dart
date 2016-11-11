import 'photo.dart';
import 'install_step.dart';
import 'part.dart';
import 'fly_type.dart';
import 'fly_simulation.dart';

class Fly {
  final FlySimulation simulates;
  final FlyType type;
  final Photo photo;
  final String name;
  final List<InstallStep> steps;
  final List<Part> parts;

  Fly(this.name, this.photo, this.steps, this.parts, this.type,
      {this.simulates: null});
}
