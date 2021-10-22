#' mysteries data
#'
#'
#' Data from a stratified random sample of books nominated for the Edgar 
#'awards for Best Novel and Best First Novel. The sample was drawn from the population
#'listing of 655 books at
#'\cr
#'\href{http://theedgars.com/awards/}{http://theedgars.com/awards/} on August 14, 2020.
#'
#'
#' @format This data frame contains the following columns:
#' 
#' \describe{
#' \item{stratum:}{stratum number, from 1 to 12, computed from the stratification variables in columns 2-4}
#'  
#'\item{time:}{time period in which award was given: 
#'
#'1 = 1946-1980 
#'
#'2 = 1981-2000 
#'
#'3 = 2001-2020}
#'  
#'\item{category:}{award category (character variable, length 16): Best Novel, or Best First Novel}
#'  
#'\item{winner:}{
#'
#'= 1 if book won the award that year
#'
#'= 0 if book was nominated but did not win award}
#'  
#'\item{popsize:}{number of population books in stratum ( = \eqn{N_h})}
#'  
#'\item{sampsize:}{number of sampled books in stratum ( = \eqn{n_h})}
#'  
#'\item{obtained:}{
#'
#'= 1 if book was obtained (responded) in original sample
#'
#'= 2 if book was obtained in phase II subsample of nonrespondents
#'
#'= 0 if not obtained}
#'  
#'  
#'\item{p1weight:}{weight for phase I sample, calculated as \eqn{N_h/n_h}; use for exercises in Chapters 1-11 of SDA}
#'  
#'\item{p2weight:}{final weight for phase II sample; use for exercises in 
#'  Chapter 12 of SDA and analyses involving variables victims and firearm}
#'  
#'\item{genre:}{genre of book (character variable, length 11). 
#'
#'"private eye" (protagonist is a private detective)
#'
#'"procedural" (a detailed, step-by-step analysis of how the crime is solved, using the skills of the detective)
#'
#' "suspense" (the protagonist is at the center of action or is involved in espionage, 
#' but is not a professional detective)}
#'  
#'\item{historical:}{
#'
#'= 1 if the main action in the book takes place at least 20 years
#'before the book's publication date
#'
#'  = 0 if book action is within
#' 20 years of the publication date}
#'  
#'  
#'\item{urban:}{= 1 if the main action in the book takes place primarily in
#'urban areas
#'
#'  = 0 otherwise}
#'  
#'\item{authorgender:}{gender of author (character variable, length 1) 
#'
#'= "F" if author
#' is female
#' 
#'= "M" if author is male}
#'  
#'\item{fdetect:}{number of female detectives (or protagonists, if book has no detective) in book}
#'  
#'\item{mdetect:}{number of male detectives (or protagonists, if book has no detective) in book}
#'  
#'\item{victims:}{number of murder victims in book (missing value set to NA if obtained = 0)}
#'  
#'\item{firearm:}{number of murders committed with firearms in book (missing value set to NA if obtained = 0)}
#'  }
#'  
#'
#' @docType data
#'
#' @usage data(mysteries)
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
"mysteries"

