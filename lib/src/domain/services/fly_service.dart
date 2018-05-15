import 'package:catalogue_mouches/domain.dart';

class FlyService {
  // TODO: Remove static with DI
  List<Fly> getFlies() {
    return [
      Fly(
          'Woolly Bugger',
          Photo(
              'lib/assets/woolly_bugger/end_result.png', 'Woolly bugger noir'),
          [
            BuildStep("Installer fil de montage et revenir jusqu'à l'oeillet"),
            BuildStep("Attacher le marabou", notes: [
              "De l'oeillet vers l'ardillon",
              'La longueur de la queue doit être environ de la longueur de la hampe'
            ]),
            BuildStep(
                "Attacher les fils de krinkle flash à la hauteur de l'ardillon, laisser pendre à l'arrière."),
            BuildStep(
                "Attacher le hackle à la hauteur de l'ardillon, laisser pendre à l'arrière",
                notes: [
                  "Les fibres les plus longues du Hackle doivents aller à l'avant",
                  "La longueur des fibres devraient être d'environ la même longueur que l'ouverture",
                  "Enlever les fibres webbées",
                  "Tirer les fibres de la tête de la plumes pour permettre de l'attacher plus facilement."
                ]),
            BuildStep(
                "Attacher la chenille à partir de l'ardillon vers l'oeillet."),
            BuildStep(
                "Enrouler le hackle autour de la chenille, jusqu'à l'oeillet."),
            BuildStep(
                "(Optionnel) Prendre un brin de tinsel pour renforcer le hackle, en l'enroulant autour de celui ci, de l'ardillon vers l'oeillet."),
            BuildStep("Faire la fête de la mouche"),
            BuildStep("Faire le noeud final"),
            BuildStep("Appliquer de la colle"),
          ],
          [
            Part('Fil de montage'),
            Part('Tinsel', options: ['Plat', 'Multicolore', 'Réfléchissant']),
            Part('Chenille', options: ['Medium', 'Noire']),
            Part('Hameçon Streamer',
                options: ['R73-9671', '2XH-3XL', 'Size 4']),
          ],
          FlyType.streamer,
          FlyDifficulty.easy,
          simulates: FlySimulation('Sangsue',
              Photo('lib/assets/sangsue_eau.jpg', "Sangsue dans l'eau"))),
      Fly(
          'Mickey Finn',
          Photo('lib/assets/mickey_finn/end_result.png',
              'Streamer noir et jaune'),
          [
            BuildStep("Installer fil de montage et revenir jusqu'à l'oeillet"),
            BuildStep(
                "Attacher fil métallique à partir de l'oeillet, jusqu'à l'ardillon.",
                notes: ["Attacher le fil sur le côté opposé de l'hameçon"]),
            BuildStep(
                "Prendre Tinsel plat/large, couper un bout à 45° et l'attacher à partir de l'ardillon."),
            BuildStep("Enrouler le Tinsel plat jusqu'à l'oeillet."),
            BuildStep("Enrouler le fil métallique jusqu'à l'oeillet.",
                notes: ["Environ 5 tours"]),
            BuildStep("Prendre quelques brins de poil (jaune)", notes: [
              "La longueur doit être d'environ la même que celle de la hampe."
            ]),
            BuildStep(
                "Aligner les poils ensemble et les fixer au niveau de l'oeillet.",
                notes: ["Le côté des poils alignés doit être à l'arrière"]),
            BuildStep("Refaire les étapes #6 et #7 avec des poils rouges",
                notes: ["En prendre un peu moins"]),
            BuildStep("Refaire les étapes #6 et #7 avec des poils jaunes",
                notes: ["En prendre encore moins"]),
            BuildStep(
                "Prendre un ou plusieurs brins de krinkle flash, les doubler jusqu'au bout de la queue."),
            BuildStep("Faire le noeud final"),
            BuildStep(
                "(Optionnel) Faire des yeux avec de la lacque 2 couleurs (noir/blanc)"),
            BuildStep("Appliquer la colle"),
          ],
          [
            Part('Fil de montage'),
            Part('Tinsel',
                options: ['Plat', 'Large', 'Multicolore', 'Réfléchissant']),
            Part('Temple Dog Orkla 2 couleurs', options: ['Rouge', 'Noir']),
            Part('Hameçon Streamer',
                options: ['R75-79580', '2XH-5XL', 'Size 4']),
            Part('Krinkle flash mirror', options: ['Bleu']),
          ],
          FlyType.streamer,
          FlyDifficulty.easy,
          simulates: FlySimulation(
              'Menés', Photo('lib/assets/minnows.jpg', "Menés dans l'eau"))),
      Fly(
          'Nympholas verte',
          Photo('lib/assets/green_drake_nymph.jpg', 'Green drake nymph'),
          [
            BuildStep(
                "Installer fil de montage et revenir jusqu'au 1/3 de la hampe."),
            BuildStep(
                "Installer plumes de mallard à partir du 1/3 de la hampe.",
                notes: [
                  "La plume doit dépasser d'environ la longueur de l'ouverture de l'hameçon"
                ]),
            BuildStep(
                "Fixer fil de laiton au niveau de l'ardillon, laisser pendre à l'arrière temporairement."),
            BuildStep("Amener le fil de montage à l'ardillon"),
            BuildStep("Enrouler dubbing sur le fil de montage"),
            BuildStep(
                "Amener dubbing jusqu'au 1/3, pour faire une forme de corps de nymphe."),
            BuildStep(
                "Enrouler le fil de laiton jusqu'au 1/3 pour former les segments d'abdomen/queue"),
            BuildStep("Fixer tinsel plat, laisse pendre vers l'arrière"),
            BuildStep(
                "Prendre petit bout de plume de canard, le fixer vers l'arrière",
                notes: [
                  "Replier quelques fibres du haut de la plume, pour faciliter la fixation.",
                  "Les fibres de la plume doivent être vers le haut, pour que lorsque la plume sera retournée, les fibres ressembleront à des pattes"
                ]),
            BuildStep("Couper l'excédant de la plume "),
            BuildStep("Enrouler fibres de paon pour former thorax",
                notes: ["À partir du 1/3 jusqu'à l'oeillet"]),
            BuildStep("Fixer et couper l'excédant"),
            BuildStep(
                "Replier la plume pour former les pattes avant et la fixer."),
            BuildStep(
                "Replier le tinsel par dessus le thorax (pour faire la carapace) et le fixer"),
            BuildStep("Faire la tête avec le fil de montage"),
            BuildStep("Faire noeud final"),
            BuildStep("Appliquer la colle"),
          ],
          [
            Part('Fil de montage'),
            Part('Plumes de mallard', options: ['Beige']),
            Part('1 Plume de canard/poule', options: ['Peut être courte']),
            Part('Dubbing synthétique', options: ['Vert']),
            Part('Fibres de paon', options: ['4 ou 5']),
            Part('Tinsel', options: ['Plat']),
            Part('Hameçon Streamer',
                options: ['R74-9472', '2XH/4XL', 'Size 8']),
          ],
          FlyType.nymph,
          FlyDifficulty.normal,
          simulates: FlySimulation('Nymphe de plécoptère',
              Photo('lib/assets/stonefly_nymph_real.jpg', 'Stonefly nymph'))),
      Fly(
          'Nymphe Copper John',
          Photo('lib/assets/copper_john/end_result.png', 'Copper John Nymph'),
          [
            BuildStep("Installer bille",
                notes: ["Par petit trou.", "Par le crochet"],
                photo: Photo('lib/assets/copper_john/parts/bead_gold_1_8.png',
                    "Bead gold")),
            BuildStep(
              "Enrouler du fil de montage pour bloquer la bille",
            ),
            BuildStep(
                "Prendre 2 pattes de caoutchouc, les attacher au niveau de la bille et les amener jusqu'à l'ardillon, en les enroulant de fil à montage.",
                notes: ["Terminer sur le dessus de l'hameçon."]),
            BuildStep("Ramener fil de montage au 1/3 de l'hameçon"),
            BuildStep(
                "Couper les pattes pour qu'elles soient de la longueur de l'ouverture de l'hameçon."),
            BuildStep(
              "Enrouler fil de cuivre.",
              notes: [
                "Prendre 4-5 pouces de fil.",
                "Enrouler à partir du 1/3 de l'hameçon, jusqu'à l'ardillon.",
                "Enrouler de façon compacte, sans laisser de vide entre chaque tour de fil."
              ],
            ),
            BuildStep(
              "Revenir avec le fil de cuivre en faisant de plus grands sillons.",
              notes: ["Revenir jusqu'au 1/3 de l'hameçon."],
            ),
            BuildStep(
              "Sécuriser le fil de cuivre et couper l'excédant.",
              photo: Photo('lib/assets/copper_john/copper_wire.png'),
            ),
            BuildStep("Attacher chenille au 1/3 de l'hameçon.",
                notes: ["La laisser pendre."],
                photo: Photo('lib/assets/copper_john/chenille.png')),
            BuildStep("Attacher le tinsel flash back au 1/3 de l'hameçon",
                notes: ["2 à 3 cm.", "Le laisser pendre à l'arrière."]),
            BuildStep("Attacher hackle au niveau de la bille.",
                notes: ["Le laisser pendre."],
                photo: Photo('lib/assets/copper_john/hackle.png')),
            BuildStep("Ramener fil de montage jusqu'à la moitié du thorax."),
            BuildStep("Doubler une patte de caoutchouc pour former 2 pattes.",
                notes: [
                  "Au milieu du thorax.",
                  "2 fois, pour faire 4 pattes.",
                ],
                photo: Photo('lib/assets/copper_john/rubber_legs.png')),
            BuildStep("Ramener le fil de montage jusqu'à la bille."),
            BuildStep("Enrouler la chenille jusqu'à la bille.",
                notes: ["En passant entre les pattes."]),
            BuildStep("Attacher le tinsel au niveau de la bille",
                notes: ["Pour former la carapace de la larve."]),
            BuildStep("Enrouler le hackle autour de la billes",
                notes: ["1 ou 2 tours"]),
            BuildStep("Sécuriser le hackle et couper l'excédant."),
            BuildStep("Faire le noeud final."),
            BuildStep("Appliquer de la colle derrière la bille."),
            BuildStep(
              "Couper les pattes à la longueur désirée.",
              photo: Photo('lib/assets/copper_john/end_result.png'),
            )
          ],
          [
            Part(
              'Hameçon de nymphe',
              options: ['Tiemco 200R', 'Straight eye', '3X Long', 'Size 10'],
              photo: Photo('lib/assets/copper_john/parts/nymph_hook.png'),
            ),
            Part(
              'Bead gold',
              options: ['1/8', 'Medium'],
              photo: Photo('lib/assets/copper_john/parts/bead_gold_1_8.png'),
            ),
            Part(
              'Pattes de caoutchouc',
              photo:
                  Photo('lib/assets/copper_john/parts/rubber_legs_olive.png'),
            ),
            Part(
              'Fil de cuivre',
              options: ['Medium'],
              photo:
                  Photo('lib/assets/copper_john/parts/copper_wire_medium.png'),
            ),
            Part(
              'Tinsel flash back',
              options: ['Mirage', 'Large'],
              photo:
                  Photo('lib/assets/copper_john/parts/tinsel_flash_back.png'),
            ),
            Part(
              'Crystal chenille',
              options: ['Medium', 'Black'],
              photo: Photo('lib/assets/copper_john/parts/crystal_chenille.png'),
            ),
            Part("Hackle de woolly bugger", options: ['Noir ou brun']),
            Part("Dubbing synthétique", options: ["Couleur terre/olive"]),
          ],
          FlyType.nymph,
          FlyDifficulty.hard,
          simulates: FlySimulation('Nymphe de plécoptère',
              Photo('lib/assets/stonefly_nymph_real.jpg', 'Stonefly nymph'))),
      Fly(
          "Elk Hair Caddis",
          Photo('lib/assets/elk_hair_caddis/end_result.png',
              'Elk Hair Caddis Fly'),
          [
            BuildStep("Mettre fil de montage"),
            BuildStep(
                "Attacher le fil de cuivre près de l'oeillet et l'amener vers l'arrière",
                notes: ["Attacher le fil sur le côté de l'hameçon"]),
            BuildStep(
                "Enrouler fil de montage avec dubbing à partir de l'ardillon, jusqu'à l'oeillet",
                notes: [
                  "Pour former le corps de la mouche",
                  "Mettre vraiment peu de dubbing pour faciliter l'installation"
                ]),
            BuildStep("Laisser le fil de montage au niveau de l'oeillet"),
            BuildStep(
                "Prendre une petite plume, la fixer au niveau de l'oeillet et l'enrouler jusqu'à l'ardillon",
                notes: [
                  "Les fibres doivent mesurer environ 1.5 fois la longueur de l'ouverture",
                  "Une fois enroulée jusqu'à l'ardillon, la plume sera sécurisée par la fil de cuivre"
                ]),
            BuildStep(
                "Enrouler le fil de cuivre autour du hackle, jusqu'à l'oeillet."),
            BuildStep("Couper l'excédant de plume à l'arrière"),
            BuildStep("Prendre une touffe de poil de wapiti",
                notes: ["Un peu plus longue que l'hameçon"]),
            BuildStep("Égaliser le poil dans un égalisateur", notes: [
              "Les fibres inégales vont vers le bas, dans l'égalisateur"
            ]),
            BuildStep("Attacher le poil de wapiti au niveau de l'oeillet",
                notes: [
                  "Les poils ne doivent pas dépasser derrière l'hameçon",
                  "Le poil de wapiti ne doit pas être serré trop fort, on doit plutôt l'attacher solidement avec plusieurs tours de fil"
                ]),
            BuildStep("Faire le noeud final", notes: [
              "Faire un noeud à la main (ou avec outil) par dessus les poils relevés au niveau de l'oeillet"
            ]),
            BuildStep(
                "Couper les poils au niveau de l'oeil, de façon à former une tête triangulaire inverse"),
            BuildStep("Appliquer de la colle"),
          ],
          [
            Part("Hameçon Dry",
                options: ["R50-94840", "STD/STD", "Size 6 à 18"]),
            Part("Fil montage", options: ["Même couleur que le poil utilisé"]),
            Part("Fil de cuivre", options: ["Small"]),
            Part("Plumes de hackle pour mouche sèche (ou a bugger)"),
            Part("Poil de wapiti"),
          ],
          FlyType.dry,
          FlyDifficulty.normal,
          simulates: FlySimulation(
              "Tricoptère", Photo('lib/assets/caddis_real.jpg', 'Plécoptère'))),
      Fly(
          'Muddler Minnow',
          Photo('lib/assets/muddler_minnow/end_result.png', 'Muddle Minnow'),
          [
            BuildStep("Installer fil de montage",
                notes: ["Laisser 2 longueurs d'oeillet à l'avant"]),
            BuildStep("Amener fil de montage jusqu'à l'ardillon"),
            BuildStep("Attacher fibres d'ailes de dindon pour former queue"),
            BuildStep("Ramener fil de montage à l'avant"),
            BuildStep("Installer le tinsel plat",
                notes: ["Faire l'aller-retour de la hampe"]),
            BuildStep("Attacher touffe de poils de chevreuil",
                notes: ["À 2 longueurs d'oeillet"]),
            BuildStep("Attacher fibres de plumes de dindon", notes: [
              "À 1 longueurs d'oeillet",
              "Prendre les fibres intérieures des plumes gauche et droite",
              "Par dessus le poil d'écureuil"
            ]),
            BuildStep("Attacher poils de chevreuil", notes: [
              "Les poiles doivent arriver environ au 3/4 des plumes de dindon"
            ]),
            BuildStep("Faire noeud final",
                notes: ["Replier les poils de chevreuil vers l'arrière"]),
            BuildStep(
                "Couper les poils de chevreuil pour former la tête de la mouche",
                notes: [
                  "Prendre la mouche dans ses mains pour faciliter la tâche"
                ]),
          ],
          [
            Part("Hameçon Streamer", options: ["Size 6"]),
            Part("Fil de montage",
                options: ["Blanc", "Plat", "Danville's 210 flat waxed"]),
            Part("Poils de chevreuil"),
            Part("2 ailes de dindon"),
            Part("Poil de queue d'écureil"),
            Part("Tinsel", options: ["Large", "Or"])
          ],
          FlyType.dry,
          FlyDifficulty.hard),
      Fly(
          'Mickey bad',
          Photo('lib/assets/mickey_bad/end_result.png', 'Mickey bad'),
          [
            BuildStep("Installer fil de montage",
                notes: ["Laisser 2 longueurs d'oeillet à l'avant"]),
            BuildStep("Installer la pair de yeux.", notes: [
              "Laisser 1 longueur d'oeillet devant les yeux",
              "Pour sécuriser les yeux, enrouler le fil de montage en formant des huits autour de la pièce"
            ]),
            BuildStep(
                "Doubler fil Trilene et l'attacher à l'arrière des yeux, jusqu'à l'ardillon.",
                notes: [
                  "Une boucle de Trilene d'environ la même longueur que la hampe doit pendre à l'arrière de l'hameçon"
                ]),
            BuildStep(
                "Enrouler beaucoup de fil de montage autour de la hampe, pour sécuriser la boucle de Trilene"),
            BuildStep("Appliquer beaucoup de colle sur le Trilene"),
            BuildStep(
                "Prendre bout de lapin et l'attacher au niveau de l'ardillon.",
                notes: [
                  "Laisser le lapin dépasser derrière, de la longueur de l'hameçon qui ira sur la boucle de Trilene.",
                  "Laisser le lapin dépasser à l'avant, de la longueur de la hampe"
                ]),
            BuildStep("Installer krinkle flash devant la queue de lapin"),
            BuildStep("Attacher chenille à l'arrière, laisser pendre"),
            BuildStep(
                "Amener fil de montage à l'avant, attacher hackle derrière les yeux et le laisser pendre vers l'avant"),
            BuildStep("Enrouler chenille vers l'avant"),
            BuildStep("Enrouler le hackle", notes: [
              "Envoyer les fibres du hackle vers l'arrière en enroulant"
            ]),
          ],
          [
            Part("Hameçon Streamer", options: ["Size 4"]),
            Part("Fil de montage", options: ["Noir"]),
            Part("Lapin", options: [
              "Cette mouche peut se faire dans le rose, mauve, olive, orange, etc."
            ]),
            Part("Hackle de bugger",
                options: ["De couleur similaire au lapin choisi"]),
            Part("Chenille", options: [
              "Medium/Large",
              "De couleur similaire au lapin choisi"
            ]),
            Part("Krinkle flash"),
          ],
          FlyType.streamer,
          FlyDifficulty.easy),
      Fly(
          'Adams',
          Photo('lib/assets/adams/end_result.png', 'Adams'),
          [
            BuildStep("Installer fil de montage",
                notes: ["En mettre partout et revenir que 1/3 de la hampe."]),
            BuildStep(
                "Prendre 2 pointes de plumes de hackle Grizzly de la même longueur"),
            BuildStep(
                "Installer les pointes de chaque côté de la hampe pour former les ailes de la mouche",
                notes: [
                  "Installer les plumes au 1/3 de la hampe (au milieu du thorax)",
                  "Fixer les plumes vers l'arrière pour commencer et les redresser avec le fil de montage en passant à l'arrière de chaque plume"
                ]),
            BuildStep(
                "Prendre des fibres d'une plume de hackle grizzly et des fibres d'une plume de hackle brune."),
            BuildStep(
                "Former une queue à l'arrière de l'hameçon avec les fibres",
                notes: [
                  "La longueur de la queue doit être d'environ la longueur de l'ouverture"
                ]),
            BuildStep(
                "Prendre 1 plume de hackle grizzly et 1 plume de hackle brune, les fixer au niveau de l'ardillon.",
                notes: ["Les laisser pendre à l'arrière"]),
            BuildStep(
                "Prendre du dubbing gris et en enrouler jusqu'à l'arrière des ailes"),
            BuildStep("Amener le fil de montage au niveau de l'oeillet."),
            BuildStep(
                "Enrouler le hackle grizzly jusqu'à l'oeillet et le fixer"),
            BuildStep("Enrouler le hackle brun jusqu'à l'oeillet et le fixer"),
            BuildStep("Faire le noeud final"),
            BuildStep("Mettre la colle"),
          ],
          [
            Part("Plumes de hackle", options: ["Grizzly"]),
            Part("Plumes de hackle", options: ["Brune"]),
            Part("Fil de montage"),
            Part("Dubbing", options: ["Gris"]),
            Part("Hameçon Dry", options: ["R50-94840", "STD/STD", "Size 10"]),
          ],
          FlyType.dry,
          FlyDifficulty.normal)
    ];
  }
}
