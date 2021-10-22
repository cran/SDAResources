#' ipums data
#'
#' 
#' Data extracted from the 1980 Census Integrated Public Use Microdata Series,
#'using the "Small Sample Density" option in the data extract tool, on September 17, 2008.
#'The stratum and psu variables were constructed for use in the book exercises. Data analyses
#'on this file do NOT give valid results for inference to the 1980 U.S. population.
#'
#'
#' @format This data frame contains the following columns:
#' \describe{
#' \item{stratum:}{stratum number (1-9)}
#' 
#' \item{psu:}{psu number (1-90)}
#' 
#' \item{inctot:}{total personal income (dollars), topcoded at $75,000}
#' 
#' \item{age:}{age, with range 15-90}
#' 
#' \item{sex:}{1 = Male
#' 
#' 2 = Female}
#' 
#' \item{race:}{1 = White
#' 
#' 2 = Black 
#' 
#' 3 = American Indian or Alaska Native
#' 
#'  4 = Asian or Pacific Islander 
#'  
#'  5 = Other Race}
#'  
#'  \item{hispanic:}{0 = Not Hispanic 
#'  
#'  1 = Hispanic}
#'  
#'  \item{marstat:}{marital Status:
#'  
#'    1 = Married
#'    
#'      2 = Separated 
#'      
#'      3 = Divorced
#'       
#'      4 = Widowed 
#'      
#'      5 = Never married/single}
#'  
#'  \item{ownershg:}{ownership of housing unit:
#'  
#'    0 = Not Applicable (N/A)
#'    
#'      1 = Owned or being bought
#'      
#'      2 = Rents}
#'  
#'  \item{yrsusa:}{number of years a foreign-born person has lived in the U.S.:
#'  
#' 0 = N/A
#' 
#' 1 = 0-5 years 
#' 
#' 2 = 6-10 years 
#' 
#' 3 = 11-15 years 
#' 
#' 4 = 16-20 years
#' 
#'   5 = 21+ years}
#'  
#'  \item{school:}{is person in school? 
#'  
#'  1 = No, not in school
#'  
#'    2 = Yes, in school}
#'  
#'  \item{educrec:}{educational attainment:
#'  
#'    1 = None or preschool
#'    
#'    2 = Grade 1, 2, 3, or 4 
#'    
#'    3 = Grade 5, 6, 7, or 8
#'    
#'    4 = Grade 9
#'    
#'    5 = Grade 10
#'      
#'    6 = Grade 11
#'
#'   7 = Grade 12
#'  
#'    8 = 1 to 3 years of college 
#'    
#'    9 = 4+ years of college}
#'  
#' \item{labforce:}{in labor force? 
#' 
#' 0 = Not Applicable
#' 
#'   1 = No 
#'   
#'   2 = Yes}
#'  
#'  \item{classwk:}{class of worker: 
#'
#'   0 = Not applicable
#'   
#' 13 = Self employed, not incorporated
#' 
#' 14 = Self employed, incorporated
#' 
#'22 = Wage/salary, private
#'
#'25 = Federal government employee
#'
#'27 = State government employee 
#'
#'28 = Local government employee
#'
#'29 = Unpaid family worker
#' }
#'   
#'   
#'    
#'  
#'  \item{vetstat:}{veteran status
#'  
#'    0 = Not Applicable
#'    
#'      1 = No Service 
#'      
#'      2 = Yes}
#'  }
#'  
#'  
#'  
#'  
#'  
#'
#' @docType data
#'
#' @usage data(ipums)
#'
#'
#'
#' @keywords datasets
#' 
#'  Source:
#'@references Ruggles et al. (2004). Integrated Public Use Microdata Series: Version 3.0 [machine-
#'readable database]. \href{https://usa.ipums.org/usa/}{https://usa.ipums.org/usa/} (accessed September 17, 2008).
#'
#'@references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press. 
#' 
#'
"ipums"

