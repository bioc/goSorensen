#' Cross-tabulation of enriched GO terms at level 3 of ontology BP in two gene lists
#'
#' From the "Cancer gene list" of Bushman Lab, a collection of gene lists related with cancer,
#' for gene lists "Atlas" and "Sanger", this dataset is the cross-tabulation of all GO terms
#' of ontology BP at level 3 which are:
#' Enriched in both lists, enriched in sanger but not in atlas, non-enriched in sanger
#' but enriched in atlas and non-enriched in both lists.
#' Take it just as an illustrative example, non up-to-date for changes in the gene lists
#' or changes in the GO. The present version was obtained under Bioconductor 3.17.
#'
#' @format An object of class "table" representing a 2x2 contingency table.
#' @source \url{http://www.bushmanlab.org/links/genelists}
#' @usage data(tab_atlas.sanger_BP3)
"tab_atlas.sanger_BP3"
