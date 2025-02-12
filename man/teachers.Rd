% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/teachers.R
\docType{data}
\name{teachers}
\alias{teachers}
\title{teachers data}
\format{
This data frame contains the following columns:

\describe{
\item{dist:}{school district size, character variable:

 large 
 
 sm/me}


\item{hrwork:}{number of hours required to work at school per week}


\item{size:}{class size}

\item{preprmin:}{minutes spent per week in school on preparation}

\item{assist:}{minutes per week that a teacher's aide works with the teacher in the classroom}

 \item{school:}{school identifier}
}
}
\usage{
data(teachers)
}
\description{
Selected variables from a study on elementary school teacher workload in Maricopa County, Arizona. 
Data courtesy of Rita Gnap (Gnap, 1995). The psu sizes are
given in data \emph{teachmi}. The large stratum had 245 schools; the small/medium stratum
had 66 schools. Missing values are coded as NA.
}
\references{
Gnap, R. (1995). Teacher Load in Arizona Elementary School Districts in Maricopa County.
\emph{Ph.D. dissertation.} Tempe, AZ: Arizona State University.

Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.

Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press.
}
\keyword{datasets}
