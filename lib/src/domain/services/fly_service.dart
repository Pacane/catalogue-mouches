import 'package:mouches/domain.dart';

class FlyService {
  // TODO: Remove static with DI
  static List<Fly> getFlies() {
    return [
      new Fly(
          'Woolly Bugger',
          new Photo('lib/assets/black_woolly_bugger.jpg', 'Woolly bugger noir'),
          <BuildStep>[
            new BuildStep(
                "Installer fil de montage et revenir jusqu'à l'oeillet"),
            new BuildStep("Attacher le marabou (oeillet vers ardillon)",
                notes: [
                  'La longueur de la queue doit être environ de la longueur de la hampe'
                ]),
            new BuildStep(
                "Attacher les fils de krinkel flash à la hauteur de l'ardillon, laisser pendre à l'arrière."),
            new BuildStep(
                "Attacher le hackle à la hauteur de l'ardillon, laisser pendre à l'arrière",
                notes: [
                  "Les fibre les plus longues du Hackle doivents aller à l'avant",
                  "La longueur des fibres devraient être d'environ la même longueur que l'ouverture",
                  "Enlever les fibres webbées",
                  "Tirer les fibres de la tête de la plumes pour permettre de l'attacher plus facilement."
                ]),
            new BuildStep(
                "Attacher la chenille à partir de l'ardillon vers l'oeillet."),
            new BuildStep(
                "Enrouler le hackle autour de la chenille, jusqu'à l'oeillet."),
            new BuildStep(
                "(Optionnel) Prendre un brin de tinsel pour renforcer le hackle, en l'enroulant autour de celui ci, de l'ardillon vers l'oeillet."),
            new BuildStep("Faire la fête de la mouche"),
            new BuildStep("Noeud final"),
            new BuildStep("Appliquer de la colle"),
          ],
          <Part>[
            new Part('Fil de montage'),
            new Part('Tinsel', ['Plat', 'Multicolore', 'Réfléchissant']),
            new Part('Chenille', ['Medium', 'Noire']),
            new Part('Hameçon Streamer', ['R73-9671', '2XH-3XL', 'Size 4']),
          ],
          FlyType.streamer,
          simulates: new FlySimulation('Sangsue',
              new Photo('lib/assets/sangsue_eau.jpg', "Sangsue dans l'eau"))),
      new Fly(
          'Streamer',
          new Photo('lib/assets/streamer.jpg', 'Streamer noir et jaune'),
          <BuildStep>[
            new BuildStep(
              'Installer fil de montage',
            )
          ],
          <Part>[
            new Part('Fil de montage'),
            new Part('Tinsel', ['Plat', 'Multicolore', 'Réfléchissant']),
            new Part('Chenille', ['Medium', 'Noire']),
            new Part('Hameçon Streamer', ['R73-9671', '2XH-3XL', 'Size 4']),
          ],
          FlyType.streamer,
          simulates: new FlySimulation('Menés',
              new Photo('lib/assets/minnows.jpg', "Menés dans l'eau"))),
      new Fly(
          'Caddis',
          new Photo('lib/assets/caddis.jpg', 'Caddis fly'),
          <BuildStep>[
            new BuildStep(
              'Installer fil de montage',
            )
          ],
          <Part>[
            new Part('Fil de montage'),
            new Part('Tinsel', ['Plat', 'Multicolore', 'Réfléchissant']),
            new Part('Chenille', ['Medium', 'Noire']),
            new Part('Hameçon Streamer', ['R73-9671', '2XH-3XL', 'Size 4']),
          ],
          FlyType.dry,
          simulates: new FlySimulation('Tricoptera (Caddis)',
              new Photo('lib/assets/caddis_real.jpg', 'Caddis fly'))),
    ];
  }
}
