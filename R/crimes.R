#' crimes data
#'
#'Data from selected variables in a simple random sample of 5,000 records from
#'the 7,048,107 records with dates between 2001 and 2019 in the City of Chicago database
#'"Crimes-2001 to Present". This file was downloaded on August 11, 2020 from \href{https://data.cityofchicago.org/}{https://data.cityofchicago.org/}. 
#'These data are provided for pedagogical purposes only. Anyone
#'wishing to publish analyses of Chicago crime data should obtain the most recent data
#'from the website. For a list and map of Community Areas, see
#'\href{https://www.chicago.gov/city/en/depts/dgs/supp_info/citywide_maps.html}{https://www.chicago.gov/city/en/depts/dgs/supp_info/citywide_maps.html}.
#'
#' @format This data frame contains the following columns:
#' \describe{
#' \item{year:}{year in which crime occurred (between 2001 and 2019)}
#' \item{crimetype:}{type of crime, determined from detailed crime description in database
#'
#'homicide = homicide 
#'
#'sexualasslt = sexual assault 
#'
#'robbery = robbery 
#'
#'aggasslt = aggravated assault
#'
#'  burglary = burglary
#'  
#'mvtheft = motor vehicle theft 
#'
#'idtheft = identity theft 
#'
#'theft = other type of theft 
#'
#'arson = arson 
#'
#'simpleasslt = simple assault (assaults that are not aggravated) 
#'
#'threat = threat or harassment 
#'
#'fraud = fraud 
#'
#'weapon = weapons violation
#'
#'trespass = trespassing 
#'
#'vandalism = vandalism 
#'
#'narcotics = narcotics or liquor law violation
#'
#'  other = other}
#'  
#'  \item{violent:}{
#'  = 1 if violent crime
#'  
#'   = 0 otherwise}
#'\item{arrest:}{
#'= 1 if an arrest was made
#'
#' = 0 otherwise}
#'  
#'  \item{domestic:}{
#'= 1 if crime was domestic-related as defined by the Illinois
#'  Domestic Violence Act
#'  
#'= 0 otherwise}
#'  
#'\item{commarea:}{number of the Community Area in Chicago where the crime occurred}
#'
#'\item{location:}{type of location where crime occurred (e.g. street, apartment)}
#'}
#'
#'
#'
#'
#' @docType data
#'
#' @usage data(crimes)
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
"crimes"

