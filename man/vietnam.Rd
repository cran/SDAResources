% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vietnam.R
\docType{data}
\name{vietnam}
\alias{vietnam}
\title{vietnam data}
\format{
This data frame contains the following columns:

\describe{
\item{apc:}{APC stratum. character variable with options "Yes," "No," "NotAvail"}
 
 \item{p2sample:}{indicator variable for phase II sample
 
 = 1 if in phase II sample
 
=  0 otherwise}
 
 \item{vietnam:}{= 1 if service in Vietnam
 
   = 0 if service not in Vietnam
   
   = NA if not in phase II sample}
 
 \item{phase1wt:}{weight for phase I sample}
 
 \item{phase2wt:}{conditional weight for phase II sample
 
 = (phase I
 sample size in stratum) / (phase II sample size in stratum)
 
 = NA for observations not in phase 2 sample}
 
 \item{finalwt:}{final weight for phase II sample
 
 = phase1wt*phase2wt 
 
= NA for observations not in phase II sample}
 
 \item{p1apcsize:}{number of observations in the observation's APC stratum that
 are in the phase I sample (\eqn{n_h})}
 
 \item{p2apcsize:}{number of observations in the observation's APC stratum that
 are in the phase II sample (\eqn{m_h})}
 }
}
\usage{
data(vietnam)
}
\description{
Vietnam-service data from Stockford and Page (1984).
}
\references{
Stockford, D. D. and W. F. Page (1984). Double sampling and the misclassification of
Vietnam service. In Proceedings of the Social Statistics Section, pp. 261–264. Alexandria,
VA: \emph{American Statistical Association}.

Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.

Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press.
}
\keyword{datasets}
