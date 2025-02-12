#' profrespacs data
#'
#' 
#' Population estimates from the 2011 American Community Survey (ACS)
#'for age/gender/education categories measured in \emph{profresp} (Zhang et al., 2020). Note
#'that age3cat has 3 categories, while the age variable in \emph{profresp} has 4 categories.
#'
#'
#' @format This data frame contains the following columns:
#' 
#' \describe{
#' \item{gender:}{
#' 
#' 1 = male
#'
#'2 = female}
#' 
#' \item{age3cat:}{age category
#' 
#'  1 = 18 to 34
#'  
#'2 = 35 to 64
#'    
#' 3 = 65 and over}
#' 
#' \item{edu3cat:}{education category
#' 
#' 1 = high school or less
#' 
#'   2 = some college or associates' degree
#'   
#'     3 = college graduate or higher}
#'  
#'  \item{count:}{population size from ACS for the gender/age/education level combination}
#'  }
#'
#' @docType data
#'
#' @usage data(profrespacs)
#'
#'
#'
#' @keywords datasets
#' 
#' @references Zhang et al. (2020). Professional respondents in
#' opt-in online panels: What do we really know? \emph{Social Science Computer Review 38 (6)},
#' 703–719.
#'
#' @references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press.
#'
#' 
#' 
#' 
"profrespacs"

