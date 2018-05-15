class FlyDifficulty {
  final String difficultyAsString;

  FlyDifficulty._(this.difficultyAsString);

  static final FlyDifficulty easy = new FlyDifficulty._('Facile');
  static final FlyDifficulty normal = new FlyDifficulty._('Moyen');
  static final FlyDifficulty hard = new FlyDifficulty._('Difficile');
}
