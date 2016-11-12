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
          new Photo('lib/assets/mickey_finn.jpg', 'Streamer noir et jaune'),
          <BuildStep>[
            new BuildStep(
                "Installer fil de montage et revenir jusqu'à l'oeillet"),
            new BuildStep(
                "Attacher fil métallique à partir de l'oeillet, jusqu'à l'ardillon.",
                notes: [
                  "(Note: Attacher le fil sur le côté opposé de l'hameçon)"
                ]),
            new BuildStep(
                "Prendre Tinsel plat/large, couper un bout à 45° et l'attacher à partir de l'ardillon."),
            new BuildStep("Enrouler le Tinsel plat jusqu'à l'oeillet."),
            new BuildStep(
                "Enrouler le fil métallique (Environ 5 tours) jusqu'à l'oeillet."),
            new BuildStep("Prendre quelques brins de poil (jaune)", notes: [
              "(Note: - La longueur doit être d'environ la même que celle de la hampe.)"
            ]),
            new BuildStep(
                "Aligner les poils ensemble (pour qu'ils soient de la même longueur à l'arrière de l'hameçon) et les fixer au niveau de l'oeillet."),
            new BuildStep("Refaire 6-7 avec des poils rouges",
                notes: ["(Note: En prendre un peu moins)"]),
            new BuildStep("Refaire 6-7 avec des poils jaunes",
                notes: ["(Note: En prendre encore moins)"]),
            new BuildStep(
                "Prendre un ou plusieurs brins de krinkel flash, les doubler jusqu'au bout de la queue."),
            new BuildStep("Faire le noeud final"),
            new BuildStep(
                "(Optionnel) Faire des yeux avec de la lacque 2 couleurs (noir/blanc)"),
            new BuildStep("Mettre la colle"),
          ],
          <Part>[
            new Part('Fil de montage'),
            new Part(
                'Tinsel', ['Plat', 'Large', 'Multicolore', 'Réfléchissant']),
            new Part('Temple Dog Orkla 2 couleurs', ['Rouge', 'Noir']),
            new Part('Hameçon Streamer', ['R75-79580', '2XH-5XL', 'Size 4']),
            new Part('Krinkel flash mirror', ['Bleu']),
          ],
          FlyType.streamer,
          simulates: new FlySimulation('Menés',
              new Photo('lib/assets/minnows.jpg', "Menés dans l'eau"))),
      new Fly(
          'Nympholas verte',
          new Photo('lib/assets/green_drake_nymph.jpg', 'Green drake nymph'),
          <BuildStep>[
            new BuildStep(
                "Installer fil de montage et revenir jusqu'au 1/3 de la hampe."),
            new BuildStep(
                "Istaller plumes de mallard à partir du 1/3 de la hampe. (Note: la plume doit dépasser d'environ la longueur de l'ouverture de l'hameçon)"),
            new BuildStep(
                "Fixer fil de laiton au niveau de l'ardillon, laisser pendre à l'arrière temporairement."),
            new BuildStep("Amener le fil de montage à l'ardillon"),
            new BuildStep("Enrouler dubbing sur le fil de montage"),
            new BuildStep(
                "Amener dubbing jusqu'au 1/3, pour faire une forme de corps de nymphe."),
            new BuildStep(
                "Enrouler le fil de laiton jusqu'au 1/3 pour former les segments d'abdomen/queue"),
            new BuildStep("Fixer tinsel plat, laisse pendre vers l'arrière"),
            new BuildStep(
                "Prendre petit bout de plume de canard, le fixer vers l'arrière (Note: Replier quelques fibres du haut de la plume, pour faciliter la fixation. Les fibre de la plume doivent être vers le haut, pour que lorsque la plume sera retournée, les fibres ressembleront à des pattes)"),
            new BuildStep("Couper l'excédant de la plume "),
            new BuildStep(
                "Enrouler fibres de paon pour former thorax (Note: À partir du 1/3 jusqu'à l'oeillet)"),
            new BuildStep("Fixer et couper l'excédant"),
            new BuildStep(
                "Replier la plume pour former les pattes avant, et la fixer."),
            new BuildStep(
                "Replier le tinsel par dessus le thorax (pour faire la carapace) et le fixer"),
            new BuildStep("Faire la tête avec le fil de montage"),
            new BuildStep("Faire noeud final"),
            new BuildStep("Appliquer la colle"),
          ],
          <Part>[
            new Part('Fil de montage'),
            new Part('Plumes de mallard', ['Beige']),
            new Part('1 Plume de canard/poule', ['Peut être courte']),
            new Part('Dubbing synthétique', ['Vert']),
            new Part('Fibres de paon', ['4 ou 5']),
            new Part('Tinsel', ['Plat']),
            new Part('Hameçon Streamer', ['R74-9472', '2XH/4XL', 'Size 8']),
          ],
          FlyType.nymph,
          simulates: new FlySimulation(
              'Nymphe de plécoptère',
              new Photo(
                  'lib/assets/stonefly_nymph_real.jpg', 'Stonefly nymph')))
    ];
  }
}
