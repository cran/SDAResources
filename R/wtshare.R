#' wtshare data
#'
#' 
#' Hypothetical sample of size 114, with indirect sampling. The data set has
#'multiple records for adults with more than one child; if adult 254 has 3 children, adult 254
#'is listed 3 times in the data set. Note that to obtain \eqn{L_k}, you need to take numadult +1.
#'
#'
#' @format This data frame contains the following columns:
#' 
#' \describe{
#' \item{id:}{identification number of adult in sample}
#' 
#' \item{child:}{= 1 if record is for a child
#' 
#'  = 0 if adult has no children}
#' 
#' \item{preschool:}{= 1 if child is in preschool
#' 
#'  = 0 otherwise}
#' 
#' \item{numadult:}{number of other adults in population who link to that child}
#'  
#'  }
#'
#' @docType data
#'
#' @usage data(wtshare)
#'
#'
#'
#' @keywords datasets
#'
#' @references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press.
#' 
#'
#'
#' 
#' 
"wtshare"

