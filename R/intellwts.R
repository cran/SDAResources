#' intellwts data
#'
#' 
#' Relative weights for demographic groups in \emph{intellonline} and
#'\emph{intelltel} (Heck et al., 2018). Each sample was weighted using the 2010 U.S. Census
#'demographics for sex (male, female), age ( < 44, => 44), and race/ethnicity (white, nonwhite).
#'The table entries give the weights for each of these eight demographic groups.
#'
#'
#' @format This data frame contains the following columns:
#' 
#'\describe{
#'\item{sex:}{Female and Male}
#'
#'\item{agegroup:}{
#'
#'Young = (age less than 44)
#'
#'  Old = (age greater than or equal to 44)}
#'
#'\item{race:}{White or Nonwhite}
#'
#'\item{tel_n:}{number of telephone survey respondents in the sex/age group/race class}
#'
#'\item{online_n:}{number of online survey respondents in the sex/agegroup/race class}
#'
#'\item{tel_wgt:}{relative weight for each respondent to the telephone survey in
#' this sex/agegroup/race class}
#'
#'\item{online_wgt:}{relative weight for each respondent to the telephone survey in
#'this sex/agegroup/race class}}
#'
#'
#'
#'  
#'  
#'  
#'
#' @docType data
#'
#' @usage data(intellwts)
#'
#'
#'
#' @keywords datasets
#' 
#'@references Heck, P. R., D. J. Simons, and C. F. Chabris (2018). 65\% of Americans believe they
#'are above average in intelligence: Results of two nationally representative surveys. \emph{PloS One 13(7)}, 1–11.
#'
#'@references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press. 
#' 
#'
#' 
#' 
#' 
"intellwts"

