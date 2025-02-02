% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.pedigree.visual.R
\name{get.pedigree.visual}
\alias{get.pedigree.visual}
\title{Draw pedigree}
\usage{
get.pedigree.visual(
  population,
  database = NULL,
  gen = NULL,
  cohorts = NULL,
  depth.pedigree = 3,
  storage.save = 1.1,
  id = FALSE,
  cex = NULL,
  path = NULL,
  showgraph = TRUE,
  outline = FALSE,
  compact = FALSE
)
}
\arguments{
\item{population}{Population list}

\item{database}{Groups of individuals to consider for the export}

\item{gen}{Quick-insert for database (vector of all generations to export)}

\item{cohorts}{Quick-insert for database (vector of names of cohorts to export)}

\item{depth.pedigree}{Depth of the pedigree in generations}

\item{storage.save}{The closer this is to 1 the more strict older animals will be filtered out of the pedigree (default: 1.1, min: 1)}

\item{id}{Set to TRUE to extract individual IDs}

\item{cex}{Size of individual labels}

\item{path}{NULL or a character value means whether the pedigree graph will be saved in a pdf file. The graph in the pdf file is a legible vector drawing, and labels isn't overlapped especially when the number of individuals is big and width of the individual label is long in one generation. It is recommended that saving a pedigree graph in the pdf file. The default value is NULL (this is taken from visPedigree documentation).}

\item{showgraph}{A logical value indicating whether a plot will be shown in the defaulted graphic device, such as the Plots panel of Rstudio. It is useful for quick viewing of the pedigree graph without opening the pdf file. However, the graph on the defaulted graphic device may be not legible, such as overlapped labels, aliasing lines due to the restricted width and height. It's a good choice to set showgraph = FALSE when the pedigree is large. The default value is TRUE (this is taken from visPedigree documentation).}

\item{outline}{A logical value indicating whether shapes without label will be shown. A graph of the pedigree without individuals' label is shown when setting outline = TRUE. It is very useful for viewing the outline of the pedigree and finding the immigrant individuals in each generation when the width of a pedigree graph is longer than the maximum width (200 inches) of the pdf file. The defaulted value is FALSE (this is taken from visPedigree documentation).}

\item{compact}{A logical value indicating whether IDs of full-sib individuals in one generation will be deleted and replaced with the number of full-sib individuals. For example, if there are 100 full-sib individuals in one generation, they will be deleted from the pedigree and be replaced with one individual label of "100" when compact = TRUE. The default value is FALSE (this is taken from visPedigree documentation).}
}
\value{
Pedigree visualization
}
\description{
Draw a pedigree for selected individuals
}
\examples{
population = creating.diploid(nsnp=100, nindi=10)
population = breeding.diploid(population, breeding.size=10)
population = breeding.diploid(population,  selection.m.database=cbind(c(1,2),1,1,5),
breeding.size=10)
population = breeding.diploid(population, selection.m.database=cbind(c(2,3),1,1,5),
 breeding.size=10)
get.pedigree.visual(population, gen=4)
}
