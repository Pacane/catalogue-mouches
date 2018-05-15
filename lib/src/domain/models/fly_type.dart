class FlyType {
  final String typeAsString;

  FlyType._(this.typeAsString);

  static final FlyType streamer = new FlyType._('Streamer');
  static final FlyType dry = new FlyType._('Sèche');
  static final FlyType wet = new FlyType._('Plongeante');
  static final FlyType emerger = new FlyType._('Émergeante');
  static final FlyType nymph = new FlyType._('Nymphe');
  static final FlyType terrestrial = new FlyType._('Terrestriale');
  static final FlyType popper = new FlyType._('Popper');
}
