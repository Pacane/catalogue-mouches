import 'package:mouches/domain.dart';

class FlyService {
  // TODO: Remove static with DI
  static List<Fly> getFlies() {
    return [
      new Fly(
          'Woolly Bugger',
          new Photo('lib/assets/black_woolly_bugger.jpg', 'Woolly bugger noir'),
          <InstallStep>[
            new InstallStep(
              'Installer fil de montage',
            )
          ]),
      new Fly(
          'Streamer',
          new Photo('lib/assets/streamer.jpg', 'Streamer noir et jaune'),
          <InstallStep>[
            new InstallStep(
              'Installer fil de montage',
            )
          ]),
      new Fly('Caddis',
          new Photo('lib/assets/caddis.jpg', 'Caddis fly'), <InstallStep>[
        new InstallStep(
          'Installer fil de montage',
        )
      ]),
    ];
  }
}
