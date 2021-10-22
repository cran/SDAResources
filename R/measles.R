#' measles data
#'
#' 
#' Roberts et al. (1995) reported on the results of a survey of parents whose
#'children had not been immunized against measles during a recent campaign to immunize
#'all children in the first five years of secondary school. The original data were unavailable;
#'univariate and multivariate summary statistics from these artificial data, however, are consistent 
#'with those in the paper. All variables are coded as 1 for yes, 0 for no, and NA for
#'no answer. A parent who refused consent (variable 4) was asked why, with responses in
#'variables 5 through 10. If a response in variables 5 through 10 was checked, it was assigned
#'value 1; otherwise, it was assigned value 0. A parent could give more than one reason for
#'not having the child immunized.
#'
#'
#' @format This data frame contains the following columns:
#' \describe{
#' 
#' \item{form:}{parent received consent form}
#' 
#' \item{returnf:}{parent returned consent form}
#' 
#' \item{consent:}{parent gave consent for measles immunization}
#' 
#' \item{hadmeas:}{child had already had measles}
#' 
#' \item{previmm:}{child had been immunized against measles}
#' 
#' \item{sideeff:}{parent concerned about side effects}
#' 
#' \item{gp:}{parent wanted general practitioner (GP) to give vaccine}
#' 
#' \item{noshot:}{child did not want injection}
#' 
#' \item{notser:}{parent thought measles not a serious illness}
#' 
#' \item{gpadv:}{GP advised that vaccine was not needed}
#' 
#'\item{school:}{school attended by child}
#' 
#' \item{Mitotal:}{population size in school}
#' 
#' \item{mi:}{sample size in school}
#'  }
#'  
#'  
#'
#' @docType data
#'
#' @usage data(measles)
#'
#'
#'
#' @keywords datasets
#'
#'@references Roberts et al. (1995). Reasons for non-uptake of measles, mumps, and rubella catch up immunisation in a
#' measles epidemic and side effects of the vaccine. \emph{British Medical Journal 310}, 1629–1632.
#' 
#' @references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press.
#' 
#'
#' 
#' 
#' 
"measles"

