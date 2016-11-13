import 'package:mouches/domain.dart';

class FlyService {
  // TODO: Remove static with DI
  List<Fly> getFlies() {
    return [
      new Fly(
          'Woolly Bugger',
          new Photo('lib/assets/black_woolly_bugger.jpg', 'Woolly bugger noir'),
          <BuildStep>[
            new BuildStep(
                "Installer fil de montage et revenir jusqu'à l'oeillet"),
            new BuildStep("Attacher le marabou", notes: [
              "De l'oeillet vers l'ardillon"
                  'La longueur de la queue doit être environ de la longueur de la hampe'
            ]),
            new BuildStep(
                "Attacher les fils de krinkel flash à la hauteur de l'ardillon, laisser pendre à l'arrière."),
            new BuildStep(
                "Attacher le hackle à la hauteur de l'ardillon, laisser pendre à l'arrière",
                notes: [
                  "Les fibres les plus longues du Hackle doivents aller à l'avant",
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
            new BuildStep("Faire le noeud final"),
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
                notes: ["Attacher le fil sur le côté opposé de l'hameçon"]),
            new BuildStep(
                "Prendre Tinsel plat/large, couper un bout à 45° et l'attacher à partir de l'ardillon."),
            new BuildStep("Enrouler le Tinsel plat jusqu'à l'oeillet."),
            new BuildStep("Enrouler le fil métallique jusqu'à l'oeillet.",
                notes: ["Environ 5 tours"]),
            new BuildStep("Prendre quelques brins de poil (jaune)", notes: [
              "La longueur doit être d'environ la même que celle de la hampe."
            ]),
            new BuildStep(
                "Aligner les poils ensemble et les fixer au niveau de l'oeillet.",
                notes: ["Le côté des poils alignés doit être à l'arrière"]),
            new BuildStep("Refaire les étapes #6 et #7 avec des poils rouges",
                notes: ["En prendre un peu moins"]),
            new BuildStep("Refaire les étapes #6 et #7 avec des poils jaunes",
                notes: ["En prendre encore moins"]),
            new BuildStep(
                "Prendre un ou plusieurs brins de krinkel flash, les doubler jusqu'au bout de la queue."),
            new BuildStep("Faire le noeud final"),
            new BuildStep(
                "(Optionnel) Faire des yeux avec de la lacque 2 couleurs (noir/blanc)"),
            new BuildStep("Appliquer la colle"),
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
                "Istaller plumes de mallard à partir du 1/3 de la hampe.",
                notes: [
                  "La plume doit dépasser d'environ la longueur de l'ouverture de l'hameçon"
                ]),
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
                "Prendre petit bout de plume de canard, le fixer vers l'arrière",
                notes: [
                  "Replier quelques fibres du haut de la plume, pour faciliter la fixation.",
                  "Les fibres de la plume doivent être vers le haut, pour que lorsque la plume sera retournée, les fibres ressembleront à des pattes"
                ]),
            new BuildStep("Couper l'excédant de la plume "),
            new BuildStep("Enrouler fibres de paon pour former thorax",
                notes: ["À partir du 1/3 jusqu'à l'oeillet"]),
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
                  'lib/assets/stonefly_nymph_real.jpg', 'Stonefly nymph'))),
      new Fly(
          'Nymphe Copper John',
          new Photo('lib/assets/copper_john.jpg', 'Copper John Nymph'),
          <BuildStep>[
            new BuildStep("Installer bille",
                notes: ["Par petit trou.", "Par le crochet"]),
            new BuildStep("Enrouler du fil de montage pour bloquer la bille"),
            new BuildStep(
                "Prendre 2 pattes de caoutchouc, les attacher au niveau de la bille et les amener jusqu'à l'ardillon, en les enroulant de fil à montage."),
            new BuildStep("Enrouler fil de cuivre.", notes: [
              "Prendre 4-5 pouces de fil.",
              "Enrouler à partir du 1/3 de l'hameçon, jusqu'à l'ardillon."
            ]),
            new BuildStep(
                "Revenir avec le fil de montage en faisant de plus grands sillons.",
                notes: ["Revenir jusqu'au 1/3 de l'hameçon."]),
            new BuildStep("Couper l'excédant du fil de cuivre"),
            new BuildStep("Attacher chenille au 1/3", notes: ["..."]),
            new BuildStep("(Optionnel) Attacher hackle au niveau de la bille.",
                notes: ["..."]),
            new BuildStep(
                "Ramener fil de montage jusqu'à la moitié du thorax."),
            new BuildStep(
                "Doubler une patte de caoutchouc pour former 2 pattes.",
                notes: ["2 fois, pour faire 4 pattes"]),
            new BuildStep("Ramener le fil de montage jusqu'à la bille."),
            new BuildStep("Enrouler la chenille jusqu'à la bille.",
                notes: ["En passant entre les pattes"]),
            new BuildStep("Faire le noeud final."),
            new BuildStep("Appliquer de la colle derrière la bille."),
          ],
          <Part>[
            new Part('Hameçon de nymphe',
                ['Tiemco 200R', 'Straight eye', '3X Long', 'Size 10']),
            new Part('Bead gold', ['1/8', 'Medium']),
            new Part('Pattes de caoutchouc'),
            new Part('Fil de cuivre', ['Medium']),
            new Part('Tinsel flash back', ['Mirage', 'Large']),
            new Part('Crystal chenille', ['Medium', 'Black']),
          ],
          FlyType.nymph,
          simulates: new FlySimulation(
              'Nymphe de plécoptère',
              new Photo(
                  'lib/assets/stonefly_nymph_real.jpg', 'Stonefly nymph'))),
    ];
  }
}
