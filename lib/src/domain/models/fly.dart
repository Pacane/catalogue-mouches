import 'photo.dart';
import 'build_step.dart';
import 'part.dart';
import 'fly_type.dart';
import 'fly_difficulty.dart';
import 'fly_simulation.dart';

class Fly {
  final FlySimulation simulates;
  final FlyType type;
  final FlyDifficulty difficulty;
  final Photo photo;
  final String name;
  final List<BuildStep> steps;
  final List<Part> parts;

  Fly(this.name, this.photo, this.steps, this.parts, this.type, this.difficulty,
      {this.simulates: null});
}
