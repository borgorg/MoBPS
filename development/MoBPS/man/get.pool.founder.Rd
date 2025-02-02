% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.pool.founder.R
\name{get.pool.founder}
\alias{get.pool.founder}
\title{Derive founder pool}
\usage{
get.pool.founder(
  population,
  database = NULL,
  gen = NULL,
  cohorts = NULL,
  use.id = FALSE
)
}
\arguments{
\item{population}{Population list}

\item{database}{Groups of individuals to consider for the export}

\item{gen}{Quick-insert for database (vector of all generations to export)}

\item{cohorts}{Quick-insert for database (vector of names of cohorts to export)}

\item{use.id}{Set to TRUE to use MoBPS ids instead of Sex_Nr_Gen based names (default: FALSE)}
}
\value{
Class of in gen/database/cohorts selected individuals
}
\description{
Function to devide the founder pool of individuals
}
\examples{
data(ex_pop)
get.pool.founder(ex_pop, gen=2)
}
