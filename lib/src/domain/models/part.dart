import 'photo.dart';

class Part {
  final String name;
  final List<String> options;
  final Photo photo;

  Part(this.name, {this.photo, this.options: const <String>[]});
}
