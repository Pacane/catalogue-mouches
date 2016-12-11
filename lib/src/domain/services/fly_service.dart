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
              "De l'oeillet vers l'ardillon",
              'La longueur de la queue doit être environ de la longueur de la hampe'
            ]),
            new BuildStep(
                "Attacher les fils de krinkle flash à la hauteur de l'ardillon, laisser pendre à l'arrière."),
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
            new Part('Tinsel',
                options: ['Plat', 'Multicolore', 'Réfléchissant']),
            new Part('Chenille', options: ['Medium', 'Noire']),
            new Part('Hameçon Streamer',
                options: ['R73-9671', '2XH-3XL', 'Size 4']),
          ],
          FlyType.streamer,
          FlyDifficulty.easy,
          simulates: new FlySimulation('Sangsue',
              new Photo('lib/assets/sangsue_eau.jpg', "Sangsue dans l'eau"))),
      new Fly(
          'Mickey Finn',
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
                "Prendre un ou plusieurs brins de krinkle flash, les doubler jusqu'au bout de la queue."),
            new BuildStep("Faire le noeud final"),
            new BuildStep(
                "(Optionnel) Faire des yeux avec de la lacque 2 couleurs (noir/blanc)"),
            new BuildStep("Appliquer la colle"),
          ],
          <Part>[
            new Part('Fil de montage'),
            new Part('Tinsel',
                options: ['Plat', 'Large', 'Multicolore', 'Réfléchissant']),
            new Part('Temple Dog Orkla 2 couleurs', options: ['Rouge', 'Noir']),
            new Part('Hameçon Streamer',
                options: ['R75-79580', '2XH-5XL', 'Size 4']),
            new Part('Krinkle flash mirror', options: ['Bleu']),
          ],
          FlyType.streamer,
          FlyDifficulty.easy,
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
            new Part('Plumes de mallard', options: ['Beige']),
            new Part('1 Plume de canard/poule', options: ['Peut être courte']),
            new Part('Dubbing synthétique', options: ['Vert']),
            new Part('Fibres de paon', options: ['4 ou 5']),
            new Part('Tinsel', options: ['Plat']),
            new Part('Hameçon Streamer',
                options: ['R74-9472', '2XH/4XL', 'Size 8']),
          ],
          FlyType.nymph,
          FlyDifficulty.normal,
          simulates: new FlySimulation(
              'Nymphe de plécoptère',
              new Photo(
                  'lib/assets/stonefly_nymph_real.jpg', 'Stonefly nymph'))),
      new Fly(
          'Nymphe Copper John',
          new Photo(
              'lib/assets/copper_john/end_result.png', 'Copper John Nymph'),
          <BuildStep>[
            new BuildStep("Installer bille",
                notes: ["Par petit trou.", "Par le crochet"],
                photo: new Photo(
                    'lib/assets/copper_john/parts/bead_gold_1_8.png',
                    "Bead gold")),
            new BuildStep(
              "Enrouler du fil de montage pour bloquer la bille",
            ),
            new BuildStep(
                "Prendre 2 pattes de caoutchouc, les attacher au niveau de la bille et les amener jusqu'à l'ardillon, en les enroulant de fil à montage.",
                notes: ["Terminer sur le dessus de l'hameçon."]),
            new BuildStep("Ramener fil de montage au 1/3 de l'hameçon"),
            new BuildStep(
                "Couper les pattes pour qu'elles soient de la longueur de l'ouverture de l'hameçon."),
            new BuildStep(
              "Enrouler fil de cuivre.",
              notes: [
                "Prendre 4-5 pouces de fil.",
                "Enrouler à partir du 1/3 de l'hameçon, jusqu'à l'ardillon.",
                "Enrouler de façon compacte, sans laisser de vide entre chaque tour de fil."
              ],
            ),
            new BuildStep(
              "Revenir avec le fil de cuivre en faisant de plus grands sillons.",
              notes: ["Revenir jusqu'au 1/3 de l'hameçon."],
            ),
            new BuildStep(
              "Sécuriser le fil de cuivre, et couper l'excédant.",
              photo: new Photo('lib/assets/copper_john/copper_wire.png'),
            ),
            new BuildStep("Attacher chenille au 1/3 de l'hameçon.",
                notes: ["La laisser pendre."],
                photo: new Photo('lib/assets/copper_john/chenille.png')),
            new BuildStep("Attacher le tinsel flash back au 1/3 de l'hameçon",
                notes: ["2 à 3 cm.", "Le laisser pendre à l'arrière."]),
            new BuildStep("Attacher hackle au niveau de la bille.",
                notes: ["Le laisser pendre."],
                photo: new Photo('lib/assets/copper_john/hackle.png')),
            new BuildStep(
                "Ramener fil de montage jusqu'à la moitié du thorax."),
            new BuildStep(
                "Doubler une patte de caoutchouc pour former 2 pattes.",
                notes: [
                  "Au milieu du thorax.",
                  "2 fois, pour faire 4 pattes.",
                ],
                photo: new Photo('lib/assets/copper_john/rubber_legs.png')),
            new BuildStep("Ramener le fil de montage jusqu'à la bille."),
            new BuildStep("Enrouler la chenille jusqu'à la bille.",
                notes: ["En passant entre les pattes."]),
            new BuildStep("Attacher le tinsel au niveau de la bille",
                notes: ["Pour former la carapace de la larve."]),
            new BuildStep("Enrouler le hackle autour de la billes",
                notes: ["1 ou 2 tours"]),
            new BuildStep("Sécuriser le hackle, et couper l'excédant."),
            new BuildStep("Faire le noeud final."),
            new BuildStep("Appliquer de la colle derrière la bille."),
            new BuildStep(
              "Couper les pattes à la longueur désirée.",
              photo: new Photo('lib/assets/copper_john/end_result.png'),
            )
          ],
          <Part>[
            new Part(
              'Hameçon de nymphe',
              options: ['Tiemco 200R', 'Straight eye', '3X Long', 'Size 10'],
              photo: new Photo('lib/assets/copper_john/parts/nymph_hook.png'),
            ),
            new Part(
              'Bead gold',
              options: ['1/8', 'Medium'],
              photo:
                  new Photo('lib/assets/copper_john/parts/bead_gold_1_8.png'),
            ),
            new Part(
              'Pattes de caoutchouc',
              photo: new Photo(
                  'lib/assets/copper_john/parts/rubber_legs_olive.png'),
            ),
            new Part(
              'Fil de cuivre',
              options: ['Medium'],
              photo: new Photo(
                  'lib/assets/copper_john/parts/copper_wire_medium.png'),
            ),
            new Part(
              'Tinsel flash back',
              options: ['Mirage', 'Large'],
              photo: new Photo(
                  'lib/assets/copper_john/parts/tinsel_flash_back.png'),
            ),
            new Part(
              'Crystal chenille',
              options: ['Medium', 'Black'],
              photo: new Photo(
                  'lib/assets/copper_john/parts/crystal_chenille.png'),
            ),
            new Part("Hackle de woolly bugger", options: ['Noir ou brun']),
            new Part("Dubbing synthétique", options: ["Couleur terre/olive"]),
          ],
          FlyType.nymph,
          FlyDifficulty.hard,
          simulates: new FlySimulation(
              'Nymphe de plécoptère',
              new Photo(
                  'lib/assets/stonefly_nymph_real.jpg', 'Stonefly nymph'))),
      new Fly(
          "Elk Hair Caddis",
          new Photo('lib/assets/caddis.jpg', 'Elk Hair Caddis Fly'),
          <BuildStep>[
            new BuildStep("Mettre fil de montage"),
            new BuildStep(
                "Attacher le fil de cuivre près de l'oeillet, et l'amener vers l'arrière",
                notes: ["Attacher le fil sur le côté de l'hameçon"]),
            new BuildStep(
                "Enrouler fil de montage avec dubbing à partir de l'ardillon, jusqu'à l'oeillet",
                notes: [
                  "Pour former le corps de la mouche",
                  "Mettre vraiment peu de dubbing pour faciliter l'installation"
                ]),
            new BuildStep("Laisser le fil de montage au niveau de l'oeillet"),
            new BuildStep(
                "Prendre une petite plume, la fixer au niveau de l'oeillet, et l'enrouler jusqu'à l'ardillon",
                notes: [
                  "Les fibres doivent mesurer environ 1.5 fois la longueur de l'ouverture",
                  "Une fois enroulée jusqu'à l'ardillon, la plume sera sécurisée par la fil de cuivre"
                ]),
            new BuildStep(
                "Enrouler le fil de cuivre autour du hackle, jusqu'à l'oeillet."),
            new BuildStep("Couper l'excédant de plume à l'arrière"),
            new BuildStep("Prendre une touffe de poil de wapiti",
                notes: ["Un peu plus longue que l'hameçon"]),
            new BuildStep("Égaliser le poil dans un égalisateur", notes: [
              "Les fibres inégales vont vers le bas, dans l'égalisateur"
            ]),
            new BuildStep("Attacher le poil de wapiti au niveau de l'oeillet",
                notes: [
                  "Les poils ne doivent pas dépasser derrière l'hameçon",
                  "Le poil de wapiti ne doit pas être serré trop fort, on doit plutôt l'attacher solidement avec plusieurs tours de fil"
                ]),
            new BuildStep("Faire le noeud final", notes: [
              "Faire un noeud à la main (ou avec outil) par dessus les poils relevés au niveau de l'oeillet"
            ]),
            new BuildStep(
                "Couper les poils au niveau de l'oeil, de façon à former une tête triangulaire inverse"),
            new BuildStep("Appliquer de la colle"),
          ],
          <Part>[
            new Part("Hameçon Dry",
                options: ["R50-94840", "STD/STD", "Size 6 à 18"]),
            new Part("Fil montage",
                options: ["Même couleur que le poil utilisé"]),
            new Part("Fil de cuivre", options: ["Small"]),
            new Part("Plumes de hackle pour mouche sèche (ou a bugger)"),
            new Part("Poil de wapiti"),
          ],
          FlyType.dry,
          FlyDifficulty.normal,
          simulates: new FlySimulation("Tricoptère",
              new Photo('lib/assets/caddis_real.jpg', 'Plécoptère'))),
      new Fly(
          'Muddler Minnow',
          new Photo(
              'lib/assets/muddler_minnow/end_result.png', 'Muddle Minnow'),
          [
            new BuildStep("Installer fil de montage",
                notes: ["Laisser 2 longueurs d'oeillet à l'avant"]),
            new BuildStep("Amener fil de montage jusqu'à l'ardillon"),
            new BuildStep(
                "Attacher fibres d'ailes de dindon pour former queue"),
            new BuildStep("Ramener fil de montage à l'avant"),
            new BuildStep("Installer le tinsel plat",
                notes: ["Faire l'aller-retour de la hampe"]),
            new BuildStep("Attacher touffe de poils de chevreuil",
                notes: ["À 2 longueurs d'oeillet"]),
            new BuildStep("Attacher fibres de plumes de dindon", notes: [
              "À 1 longueurs d'oeillet",
              "Prendre les fibres intérieures des plumes gauche et droite",
              "Par dessus le poil d'écureuil"
            ]),
            new BuildStep("Attacher poils de chevreuil", notes: [
              "Les poiles doivent arriver environ au 3/4 des plumes de dindon"
            ]),
            new BuildStep("Faire noeud final",
                notes: ["Replier les poils de chevreuil vers l'arrière"]),
            new BuildStep(
                "Couper les poils de chevreuil pour former la tête de la mouche",
                notes: [
                  "Prendre la mouche dans ses mains pour faciliter la tâche"
                ]),
          ],
          [
            new Part("Hameçon Streamer", options: ["Size 6"]),
            new Part("Fil de montage",
                options: ["Blanc", "Plat", "Danville's 210 flat waxed"]),
            new Part("Poils de chevreuil"),
            new Part("2 ailes de dindon"),
            new Part("Poil de queue d'écureil"),
            new Part("Tinsel", options: ["Large", "Or"])
          ],
          FlyType.dry,
          FlyDifficulty.hard),
      new Fly(
          'Mickey bad',
          new Photo('lib/assets/muddler_minnow/end_result.png', 'Mickey bad'),
          [
            new BuildStep("Installer fil de montage",
                notes: ["Laisser 2 longueurs d'oeillet à l'avant"]),
            new BuildStep("Installer la pair de yeux.", notes: [
              "Laisser 1 longueur d'oeillet devant les yeux",
              "Pour sécuriser les yeux, enrouler le fil de montage en formant des huits autour de la pièce"
            ]),
            new BuildStep(
                "Doubler fil Trilene, et l'attacher à l'arrière des yeux, jusqu'à l'ardillon.",
                notes: [
                  "Une boucle de Trilene d'environ la même longueur que la hampe doit pendre à l'arrière de l'hameçon"
                ]),
            new BuildStep(
                "Enrouler beaucoup de fil de montage autour de la hampe, pour sécuriser la boucle de Trilene"),
            new BuildStep("Appliquer beaucoup de colle sur le Trilene"),
            new BuildStep(
                "Prendre bout de lapin et l'attacher au niveau de l'ardillon.",
                notes: [
                  "Laisser le lapin dépasser derrière, de la longueur de l'hameçon qui ira sur la boucle de Trilene.",
                  "Laisser le lapin dépasser à l'avant, de la longueur de la hampe"
                ]),
            new BuildStep("Installer krinkle flash devant la queue de lapin"),
            new BuildStep("Attacher chenille à l'arrière, laisser pendre"),
            new BuildStep(
                "Amener fil de montage à l'avant, attacher hackle derrière les yeux, et le laisser pendre vers l'avant"),
            new BuildStep("Enrouler chenille vers l'avant"),
            new BuildStep("Enrouler le hackle", notes: [
              "Envoyer les fibres du hackle vers l'arrière en enroulant"
            ]),
          ],
          [
            new Part("Hameçon Streamer", options: ["Size 4"]),
            new Part("Fil de montage", options: ["Noir"]),
            new Part("Lapin", options: [
              "Cette mouche peut se faire dans le rose, mauve, olive, orange, etc."
            ]),
            new Part("Hackle de bugger",
                options: ["De couleur similaire au lapin choisi"]),
            new Part("Chenille", options: [
              "Medium/Large",
              "De couleur similaire au lapin choisi"
            ]),
            new Part("Krinkle flash"),
          ],
          FlyType.streamer,
          FlyDifficulty.easy)
    ];
  }
}
