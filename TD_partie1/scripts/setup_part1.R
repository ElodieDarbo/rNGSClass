# Les packages R sont déposés dans 2 répertoires publics importants: 
# BioConductor: https://bioconductor.org/ 
# dédié à la bioinformatique et 
# CRAN: https://cran.r-project.org/ plus généraliste. Suivant où est déposé le package
# la commande d'installation est différente BiocManager pour les packages de bioconductor 
# install.packages pour ceux de CRAN. 
# Pour savoir où les packages se trouvent, la seule solution est de chercher sur le net
# avec les mots clés "R package nomDuPackage"
# Les packages dépendent souvent d'autres packages et c'est ce qui rend l'installation compliquée
# Les nouveaux packages sont mieux construits qu'avant et recherchent les dépendance eux même
# QuasR est plutôt anciens ...
# Si dessous, la liste des dépendances de QuasR, qui normalement joué dans l'ordre devrait permettre
# son installation.


if (!requireNamespace("BiocMananger", quietly = TRUE)){
  install.packages("BiocManager")
}

if (!requireNamespace("BiocGenerics", quietly = TRUE)){
  BiocManager::install("BiocGenerics")
}

if (!requireNamespace("S4Vectors", quietly = TRUE)){
  BiocManager::install("S4Vectors")
}

if (!requireNamespace("Biobase", quietly = TRUE)){
  BiocManager::install("Biobase")
}

if (!requireNamespace("IRanges", quietly = TRUE)){
  BiocManager::install("IRanges")
}

if (!requireNamespace("GenomeInfoDb", quietly = TRUE)){
  BiocManager::install("GenomeInfoDb")
}

if (!requireNamespace("AnnotationDbi", quietly = TRUE)){
  BiocManager::install("AnnotationDbi")
}

if (!requireNamespace("XVector", quietly = TRUE)){
  BiocManager::install("XVector")
}

if (!requireNamespace("Biostrings", quietly = TRUE)){
  BiocManager::install("Biostrings")
}

if (!requireNamespace("BSgenome", quietly = TRUE)){
  BiocManager::install("BSgenome")
}

if (!requireNamespace("GenomicAlignments", quietly = TRUE)){
  BiocManager::install("GenomicAlignments")
}

if (!requireNamespace("BiocParallel", quietly = TRUE)){
  BiocManager::install("BiocParallel")
}

if (!requireNamespace("rtracklayer", quietly = TRUE)){
  BiocManager::install("rtracklayer")
}

if (!requireNamespace("Rsamtools", quietly = TRUE)){
  BiocManager::install("Rsamtools")
}

if (!requireNamespace("Rsamtools", quietly = TRUE)){
  BiocManager::install("Rsamtools")
}

if (!requireNamespace("GenomicRanges", quietly = TRUE)){
  BiocManager::install("GenomicRanges")
}

if (!requireNamespace("GenomicFeatures", quietly = TRUE)){
  BiocManager::install("GenomicFeatures")
}

if (!requireNamespace("ShortRead", quietly = TRUE)){
  BiocManager::install("ShortRead")
}

if (!requireNamespace("Rhisat2", quietly = TRUE)){
  BiocManager::install("Rhisat2")
}

if (!requireNamespace("Rbowtie", quietly = TRUE)){
  BiocManager::install("Rbowtie")
}

if (!requireNamespace("QuasR", quietly = TRUE)){
  BiocManager::install("QuasR")
}

if (!requireNamespace("Gviz", quietly = TRUE)){
  BiocManager::install("Gviz")
}

