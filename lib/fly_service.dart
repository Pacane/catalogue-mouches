import 'package:mouches/fly.dart';

class FlyService {
  static List<Fly> getFlies() {
    return [
      new Fly(
          'Woolly Bugger',
          new Photo('lib/black_woolly_bugger.jpg', 'Woolly bugger noir'),
          <InstallStep>[
            new InstallStep(
              'Installer fil de montage',
            )
          ]),
      new Fly(
          'Streamer',
          new Photo('lib/streamer.jpg', 'Streamer noir et jaune'),
          <InstallStep>[
            new InstallStep(
              'Installer fil de montage',
            )
          ]),
      new Fly('Caddis', new Photo('lib/caddis.jpg', 'Caddis'), <InstallStep>[
        new InstallStep(
          'Installer fil de montage',
        )
      ]),
    ];
  }
}
