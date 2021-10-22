#' swedishlcs data
#'
#' 
#' Data on call attempts from the Swedish Survey of Living Conditions.
#'
#'
#'The variable attempt takes on values 1-25 for the initial fieldwork period. Values 31-40
#'denote the follow-up period, and value 45 gives the final estimates. The gaps in the attempt
#'variable allow one to see the separation of the periods on the graph.
#'
#'
#'
#'
#' @format This data frame contains the following columns:
#' 
#' \describe{
#' \item{attempt:}{call attempt number}
#' 
#' \item{resprate:}{response rate at call attempt (percent)}
#' 
#' \item{benefits:}{relative bias for variable benefits}
#' 
#' \item{income:}{relative bias for variable income}
#' 
#' \item{employed:}{relative bias for variable employed}
#' 
#' \item{note:}{character variable, length 25: notes about data collection}
#' }
#'  
#'  
#'  
#'
#' @docType data
#'
#' @usage data(swedishlcs)
#'
#'
#'
#' @keywords datasets
#' 
#'@references Lundquist, P. and C.-E. Särndal (2013). Aspects of responsive design with applications to
#' the Swedish Living Conditions Survey. \emph{Journal of Official Statistics 29 (4)}, 557–582.
#'
#' @references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press.
#' 
#'
#' 
#' 
#' 
"swedishlcs"

