% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/healthjournals.R
\docType{data}
\name{healthjournals}
\alias{healthjournals}
\title{healthjournals data}
\format{
This data frame contains the following columns:
\describe{
\item{journal:}{journal that published the article

AJPH = American Journal of Public Health

AJPM = American Journal of Preventive Medicine

PM = Preventive Medicine
}

\item{NumAuthors:}{number of authors}

\item{RandomSel:}{

"Yes" if data in the article were from a randomly selected
(probability) sample

"No" otherwise
}

\item{RandomAssn:}{

"Yes" if study subjects for the article were randomly assigned to treatment groups

"No" otherwise
}

\item{ConfInt:}{

"Yes" if a confidence interval appeared in the article's main
text, tables, or figures

"No" otherwise}

\item{HypTest:}{

"Yes" if a p-value or significance test appeared in the article's main text, tables, or figures

"No" otherwise}

\item{Asterisks:}{

"Yes" if asterisks were used to represent p-value ranges

"No" otherwise}
}
}
\usage{
data(healthjournals)
}
\description{
Randomization and statistical inference practices in a stratified random
sample of 196 public health articles. The data, provided courtesy of Dr. Matt Hayat, are
discussed in Hayat and Knapp (2017). The variables provided in \emph{healthjournals} are
a subset of the variables collected by the authors.
}
\references{
Hayat, M. and T. Knapp (2017). Randomness and inference in medical and public health
research. \emph{Journal of the Georgia Public Health Association 7 (1)}, 7–11.

Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.

Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press.
}
\keyword{datasets}
