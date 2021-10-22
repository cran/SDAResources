#' journal data
#'
#' 
#' Types of sampling used for articles in a sample of journals.
#'Note that columns 2 and 3 do not always sum to column 1; for some articles, the investigators
#'could not determine which type of sampling was used. When working with these data, you
#'may wish to create a fourth column, "indeterminate", which equals column1 - (column2 + column3).
#'
#'
#' @format This data frame contains the following columns:
#' \describe{
#' \item{numemp:}{number of articles in 1988 that used sampling}
#'
#' \item{prob:}{number of articles that used probability sampling}
#' 
#' \item{nonprob:}{number of articles that used non-probability sampling}
#'  }
#'  
#'  
#'
#' @docType data
#'
#' @usage data(journal)
#'
#'
#'
#' @keywords datasets
#' 
#'@references Source: Jacoby and Handlin (1991). Non-probability sampling designs for litigation surveys.
#' \emph{Trademark Reporter 81}, 169–179.
#'
#' @references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press.
#'
#' 
#' 
#' 
"journal"

