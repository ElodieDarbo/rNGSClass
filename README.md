# NGS data analysis practical material (R, IGV webtool)

## Contexte

Les léiomyosarcomes (LMS) sont des cancers mésenchimateux rare des tissus mous qui peuvent se développer dans divers sites anatomiques mais le plus souvent dans l’utérus, le rétropéritoine et les membres. Les LMS sont le sous-type le plus agressif des sarcomes des tissus mous avec jusqu’à 50% des patients développent des métastases durant la première année après le diagnostique. Malheureusement, aucune thérapie ciblée ou immunothérapie n’a montré d’effets thérapeutiques majeurs jusqu’à aujourd’hui. Le patients sont donc traités par résection chirurgicale pour les LMS localisés ou par chimiothérapie classique. Les LMS ont une génétique complexe et seulement un faible nombre de voies de signalisation ont été clairement identifiées étant impliquées dans leur oncogenèse mais n’expliquent pas la diversité des phénotypes. Une possibilité d’amélioration de l’efficacité des traitements serait de pouvoir startifier, regrouper les patients suivant des marqueurs spécifiques d’une succeptibilité particulière.

Vous aurez dans ce TD toutes les commandes R ainsi que toutes les réponses. Celles-ci sont cachées, vous aurez juste à étendre les sections pour les voir.

L’idée est que, grâce aux noms des packages et des fonctions spécifiées, vous essayiez par vous mêmes d’écrire les lignes de code et de répondre aux questions.

Tips: Utiliser, dès que vous ne connaissez pas une fonction, l’outil d’aide accessible de plusieurs manières: soit dans le panel en bas à droite de RStudio qui contient un onglet Help, soit en tapant dans la console help("nomDeLaFonction") ou encore?NomDeLaFonction.

## Objectifs

### Partie 1

Durant ce TD, nous allons procéder aux traitements primaires des données issues de séquençage du génome entier (Whole Genome Sequencing: WGS) du tissu sain et tumoral d’un patient atteint de LMS. Le but est de préparer les données afin de pouvoir détecté des variations succeptibles de provoquer l’apparition du léiomyosarcome.

### Partie 2

#### IGV

Durant ce TD, nous allons rechercher les variations génétiques du patient LMS25. Durant le TD précédent nous avons préparé les données issues de séquençage du génome entier (Whole Genome Sequencing: WGS) du tissu sain et tumoral et de son transcriptome afin de pouvoir y détecter des variations succeptibles de provoquer l’apparition du léiomyosarcome chez ce patient.

Nous allons utiliser the Integrative Genome Viewer (IGV) qui est un outil en ligne qui permet de visualiser les reads alignés sur le génome humain version hg38 (.bam) et d’observer les variations relatives au génome de référence.

Nous allons apprendre pas à pas à charger des données, naviguer sur le génome et identifier des variants somatiques ayant un intérêt potentiel pour notre étude.

#### Copy number

Durant ce TD, nous allons d’abord rechercher les variations structurales du patient LMS25. Durant le TD précédent nous avons préparé les données issues de séquençage du génome entier (Whole Genome Sequencing: WGS) du tissu sain et tumoral et de son transcriptome afin de pouvoir y détecter des variations succeptibles de provoquer l’apparition du léiomyosarcome chez ce patient.

Nous allons utiliser RStudio pour analyser les variations de nombre de copies de régions chromosomiques à partir de fichiers VCF contenant l’analyse de détection de SNP. Ce type de fichier contient par exemple la couverture de milliers de position qui peut être utilisée pour calculer ces variations.

Nous allons ensuite utiliser des données précalculées de variations de nombres de copies dans une cohorte de 100 patients. Le but est de classer le patients en fonction de leur profil chromosomique.

### Partie 3

Durant ce TD, Nous allons analyser les groupes de patients que nous avons identifiés précédemment lors de l’analyse de variations de nombres de copies.

    Les patients groupés ont ils des caractéristiques communes ?

Nous allons calculer l’enrichissement en caractéristiques cliniques pour chacun de ces groupes et ensuite évaluer si il y a une différence de survie, c’est à dire si un de ses groupes est atteint d’une tumeur plus agressive que l’autre.

    Est ce que la variation du nombre de copies a un impact sur l’expression de ces gènes ?

Nous allons utiliser des données de RNA-seq provenant du TCGA [The Cancer Genome Atlas] (https://www.cancer.gov/about-nci/organization/ccg/research/structural-genomics/tcga). Ces données sont brutes, c’est à dire qu’elles n’ont pas été normalisées, nous allons donc procéder à cette normalisation et regarder si il y a un lien entre le gain ou la perte de copie des gènes et l’expression de ces gènes.

    Pouvons nous identifier des voies biologiques impliquées fréquemment et spécifiquement perturbées dans chaque groupe de patients? Ces voies biologiques peuvent elles être reliées à la cancérogénèse ?

Nous allons aussi détecter les gènes dont l’expression est significativement différente entre les 2 groupes.

Une fois ces gènes identifiés, nous allons effectuer une analyse fonctionnelle des voies de signalisation, c’est à dire que nous allons évaluer si les gènes dérégulés sont impliqués dans des processus biologiques spécifiques. Pour cela nous allons utiliser un outil en ligne [webgestalt](http://www.webgestalt.org/#).

license: [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
