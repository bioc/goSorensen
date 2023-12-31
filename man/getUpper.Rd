% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getUpper.R
\name{getUpper}
\alias{getUpper}
\alias{getUpper.equivSDhtest}
\alias{getUpper.equivSDhtestList}
\alias{getUpper.AllEquivSDhtest}
\title{Access to the upper limit of the one-sided confidence intervals for the Sorensen-Dice
dissimilarity in one or more equivalence test results}
\usage{
getUpper(x, ...)

\method{getUpper}{equivSDhtest}(x, ...)

\method{getUpper}{equivSDhtestList}(x, simplify = TRUE, ...)

\method{getUpper}{AllEquivSDhtest}(x, onto, GOLevel, listNames, simplify = TRUE, ...)
}
\arguments{
\item{x}{an object of class "equivSDhtest" or "equivSDhtestList" or "allEquivSDtest".}

\item{...}{Additional parameters.}

\item{simplify}{logical, if TRUE the result is simplified, e.g., returning a vector instead
of a matrix.}

\item{onto}{character, a vector with one or more of "BP", "CC" or "MF", ontologies to access.}

\item{GOLevel}{numeric or character, a vector with one or more GO levels to access.
See the details section and the examples.}

\item{listNames}{character(2), the names of a pair of gene lists.}
}
\value{
A numeric value, the upper limit of the one-sided confidence interval for the Sorensen-Dice
dissimilarity.

When \code{x} is an object of class "equivSDhtest" (i.e., the result of a single
equivalence test), the returned value is a single numeric value, the upper limit of the
one-sided confidence interval for the Sorensen-Dice dissimilarity.
For an object of class "equivSDhtestList" (i.e. all pairwise tests for a
set of gene lists), if \code{simplify = TRUE} (the default), the resulting value is a vector
with the upper limit of the one-sided confidence intervals in all those tests, or the symmetric
matrix of all these values if \code{simplify = TRUE}. If \code{x} is an object of class
"allEquivSDtest" (i.e., the test iterated along GO ontologies and levels), the preceding result
is returned in the form of a list along the ontologies, levels and pairs of gene lists specified
by the arguments \code{onto, GOlevel} and \code{listNames} (or all present in \code{x} for
missing arguments).
}
\description{
Given objects representing the result(s) of one or more equivalence tests
(classes "equivSDhtest", "equivSDhtestList" or "allEquivSDtest", i.e., the
result of functions 'equivTestSorensen' and 'allEquivTestSorensen')
this function returns the upper limits of the one-sided confidence intervals
[0, dU] for the Sorensen-Dice dissimilarity.
}
\details{
Argument \code{GOLevel} can be of class "character" or "numeric". In the first case, the GO
levels must be specified like \code{"level 6"} or \code{c("level 4", "level 5", "level 6")}
In the second case ("numeric"), the GO levels must be specified like\code{6} or \code{seq.int(4,6)}.
}
\section{Methods (by class)}{
\itemize{
\item \code{getUpper(equivSDhtest)}: S3 method for class "equivSDhtest"

\item \code{getUpper(equivSDhtestList)}: S3 method for class "equivSDhtestList"

\item \code{getUpper(AllEquivSDhtest)}: S3 method for class "AllEquivSDhtest"

}}
\examples{
# Dataset 'allOncoGeneLists' contains the result of the equivalence test between gene lists
# 'waldman' and 'atlas', at level 4 of the BP ontology:
data(waldman_atlas.BP.4)
waldman_atlas.BP.4
class(waldman_atlas.BP.4)
# This may correspond to the result of code like:
# waldman_atlas.BP.4 <- equivTestSorensen(
#   allOncoGeneLists[["waldman"]], allOncoGeneLists[["atlas"]],
#   geneUniverse = humanEntrezIDs, orgPackg = "org.Hs.eg.db",
#   onto = "BP", GOLevel = 4, listNames = c("waldman", "atlas"))
# (But results may vary according to GO updating)
getUpper(waldman_atlas.BP.4)

# All pairwise equivalence tests at level 4 of the BP ontology:
data(BP.4)
?BP.4
class(BP.4)
# This may correspond to a call like:
# BP.4 <- equivTestSorensen(allOncoGeneLists,
#                           geneUniverse = humanEntrezIDs, orgPackg = "org.Hs.eg.db",
#                           onto = "BP", GOLevel = 4)
getUpper(BP.4)
getUpper(BP.4, simplify = FALSE)

# Equivalence test iterated over all GO ontologies and levels 3 to 10:
data(cancerEquivSorensen)
?cancerEquivSorensen
class(cancerEquivSorensen)
# This may correspond to code like:
# (By default, the tests are iterated over all GO ontologies and for levels 3 to 10)
# cancerEquivSorensen <- allEquivTestSorensen(allOncoGeneLists,
#                                             geneUniverse = humanEntrezIDs,
#                                             orgPackg = "org.Hs.eg.db")
# All upper confidence limits for the Sorensen-Dice dissimilarities:
getUpper(cancerEquivSorensen)
getUpper(cancerEquivSorensen, simplify = FALSE)

# Upper confidence limits only for some GO ontologies, levels or pairs of gene lists:
getUpper(cancerEquivSorensen, GOLevel = "level 6")
getUpper(cancerEquivSorensen, GOLevel = 6)
getUpper(cancerEquivSorensen, GOLevel = seq.int(4,6))
getUpper(cancerEquivSorensen, GOLevel = "level 6", simplify = FALSE)
getUpper(cancerEquivSorensen, GOLevel = "level 6", listNames = c("waldman", "sanger"))
getUpper(cancerEquivSorensen, GOLevel = seq.int(4,6), onto = "BP")
getUpper(cancerEquivSorensen, GOLevel = seq.int(4,6), onto = "BP", simplify = FALSE)
getUpper(cancerEquivSorensen, GOLevel = "level 6", onto = "BP",
         listNames = c("waldman", "sanger"))
getUpper(cancerEquivSorensen$BP$`level 4`)

}
