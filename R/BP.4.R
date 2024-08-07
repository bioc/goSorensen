#' An example of an object of class "equivSDhtestList" resulting from a call to 'equivSorensenTest'
#'
#' The result of all pairwise Sorensen-Dice equivalence tests between the gene lists in data
#' \code{\link{allOncoGeneLists}} which may be charged from this package.
#' To perform the tests, the information in these data was summarized as 2x2 contingency tables of GO terms
#' enrichment, at level 4 of the BP ontology, and the tests were performed for an equivalence
#' limit d0 = 0.4444 and a confidence level conf.int = 0.95.
#' These results are based on gene lists which are non automatically updated, take them just as an illustrative
#' example.
#'
#' @format An object of class "equivSDhtestList" inheriting from class "list". It is a list of class "equivSDhtest"
#' objects.
#' @source \url{http://www.bushmanlab.org/links/genelists}
#' @usage data(BP.4)
"BP.4"
