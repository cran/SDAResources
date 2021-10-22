#' pitcount data
#'
#' 
#' Fictional data from a fictional point-in-time (PIT) survey taken to estimate
#' the number of persons experiencing homelessness.
#'
#'
#' @format This data frame contains the following columns:
#' 
#' \describe{
#'  \item{strat:}{stratum number (from 1 to 8)}
#'  
#'  \item{division:}{geographic division, used to form strata}
#'  
#'  \item{density:}{expected density of persons experiencing homelessness 
#'  (character variable, with values High or Low)}
#'  
#'  \item{popsize:}{= \eqn{N_h}, the number of areas in the population for stratum h}
#'  
#'  \item{sampsize:}{= \eqn{n_h}, the number of areas in the sample for stratum h}
#'  
#'  \item{areawt:}{= \eqn{N_h/n_h}, the sampling weight for the area}
#'  
#'  \item{y:}{number of persons experiencing unsheltered homelessness
#'  found in the area during the PIT count}
#'  
#'}
#'  
#'  
#'
#' @docType data
#'
#' @usage data(pitcount)
#'
#'
#'
#' @keywords datasets
#'
#' @references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press. 
#' 
#'
#' 
#' 
#' 
"pitcount"

