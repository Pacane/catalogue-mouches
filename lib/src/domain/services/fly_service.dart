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
          ],
          <Part>[
            new Part('Fil de montage'),
            new Part('Tinsel', ['Plat', 'Multicolore', 'Réfléchissant']),
            new Part('Chenille', ['Medium', 'Noire']),
            new Part('Hameçon Streamer', ['R73-9671', '2XH-3XL', 'Size 4']),
          ]),
      new Fly(
          'Streamer',
          new Photo('lib/assets/streamer.jpg', 'Streamer noir et jaune'),
          <InstallStep>[
            new InstallStep(
              'Installer fil de montage',
            )
          ],
          <Part>[
            new Part('Fil de montage'),
            new Part('Tinsel', ['Plat', 'Multicolore', 'Réfléchissant']),
            new Part('Chenille', ['Medium', 'Noire']),
            new Part('Hameçon Streamer', ['R73-9671', '2XH-3XL', 'Size 4']),
          ]),
      new Fly('Caddis',
          new Photo('lib/assets/caddis.jpg', 'Caddis fly'), <InstallStep>[
        new InstallStep(
          'Installer fil de montage',
        )
      ], <Part>[
        new Part('Fil de montage'),
        new Part('Tinsel', ['Plat', 'Multicolore', 'Réfléchissant']),
        new Part('Chenille', ['Medium', 'Noire']),
        new Part('Hameçon Streamer', ['R73-9671', '2XH-3XL', 'Size 4']),
      ]),
    ];
  }
}
