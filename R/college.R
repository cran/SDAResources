#' college data
#'
#' 
#' Selected variables from the U.S. Department of Education College Scorecard
#'Data (version updated on June 1, 2020). Some of the variables in the book data have been
#'calculated from other variables in the original source; these have been given new variable
#'names that are not found in the
#'\href{https://collegescorecard.ed.gov/data/documentation/}{data dictionary}. 
#'
#'This data set is made available for pedagogical purposes only. Anyone wishing to draw
#'conclusions from College Scorecard data should obtain the full data set from the Department
#'of Education. The original data set has 1,925 variables and includes institutions (such as
#'those that do not grant undergraduate degrees) that are not in the data college.
#'
#' The college data includes institutions in the original data set that: (1) are located in the
#' 50 states plus District of Columbia, (2) contain information on average net price (NPT4),
#' (3) are predominantly Bachelor's degree-granting, (4) were currently operating as of June
#' 2020, (5) are not private for-profit institutions or "global" campuses, (6) have Carnegie
#' size classification (variable ccsizset)
#'between 6 and 17 and Carnegie basic classification(variable ccbasic)
#' between 14 and 22 (these offer Bachelor's degrees), (7) enrolls first-time
#' students, and (8) are not U.S. Service Academies. 
#' 
#'For all variables, missing data are coded as NA.
#'
#'
#' @format This data frame contains the following columns:
#'
#'\describe{
#'\item{unitid:}{unit identification number}
#'
#'\item{instnm:}{institution name (character, length 81)}
#'
#'\item{city:}{city (character, length 24)}
#'
#'\item{stabbr:}{state abbreviation (character, length 2)}
#'
#'\item{highdeg:}{highest degree awarded
#'
#'3 = Bachelor's degree
#'
#'4 = Graduate degree}
#'
#'\item{control:}{control (ownership) of institution
#'
#'1 = public 
#'
#'2 = private nonprofit}
#'
#'\item{region:}{region where institution is located
#'
#'1 New England (CT, ME, MA, NH, RI, VT)
#'
#'2 Mid East (DE, DC, MD, NJ, NY, PA)
#'
#'3 Great Lakes (IL, IN, MI, OH, WI)
#'
#'4 Plains (IA, KS, MN, MO, NE, ND, SD)
#'
#'5 Southeast (AL, AR, FL, GA, KY, LA, MS, NC, SC, TN, VA, WV)
#'
#'6 Southwest (AZ, NM, OK, TX)
#'
#'7 Rocky Mountains (CO, ID, MT, UT, WY)
#'
#'8 Far West (AK, CA, HI, NV, OR, WA)
#'}
#'
#'\item{locale:}{locale of institution
#'
#'11 City: Large (population of 250,000 or more)
#'
#'12 City: Midsize (population of at least 100,000 but less than 250,000)
#'
#'13 City: Small (population less than 100,000)
#'
#'21 Suburb: Large (outside principal city, in urbanized area with population of 250,000 or more)
#'
#'22 Suburb: Midsize (outside principal city, in urbanized area with population of at least 100,000 but less than 250,000)
#'
#'23 Suburb: Small (outside principal city, in urbanized area with population less than 100,000)
#'
#'31 Town: Fringe (in urban cluster up to 10 miles from an urbanized area)
#'
#'32 Town: Distant (in urban cluster more than 10 miles and up to 35 miles from an urbanized area)
#'
#'33 Town: Remote (in urban cluster more than 35 miles from an urbanized area)
#'
#'41 Rural: Fringe (rural territory up to 5 miles from an urbanized area or up to 2.5 miles from an urban cluster)
#'
#'42 Rural: Distant (rural territory more than 5 miles but up to 25 miles from an urbanized area or more than 2.5 and up to 10 miles from an urban cluster)
#'
#'43 Rural: Remote (rural territory more than 25 miles from an urbanized area and more than 10 miles from an urban cluster)
#'}
#'
#'\item{ccbasic:}{carnegie basic classification
#'
#'15 Doctoral Universities: Very High Research Activity
#'
#'16 Doctoral Universities: High Research Activity
#'
#'17 Doctoral/Professional Universities
#'
#'18 Master's Colleges & Universities: Larger Programs
#'
#'19 Master's Colleges & Universities: Medium Programs
#'
#'20 Master's Colleges & Universities: Small Programs
#'
#'21 Baccalaureate Colleges: Arts & Sciences Focus
#'
#'22 Baccalaureate Colleges: Diverse Fields
#'}
#'
#'
#'\item{ccsizset:}{carnegie classification, size and setting
#'
#'6 Four-year, very small, primarily nonresidential
#'
#'7 Four-year, very small, primarily residential
#'
#'8 Four-year, very small, highly residential
#'
#'9 Four-year, small, primarily nonresidential
#'
#'10 Four-year, small, primarily residential
#'
#'11 Four-year, small, highly residential
#'
#'12 Four-year, medium, primarily nonresidential
#'
#'13 Four-year, medium, primarily residential
#'
#'14 Four-year, medium, highly residential
#'
#'15 Four-year, large, primarily nonresidential
#'
#'16 Four-year, large, primarily residential
#'
#'17 Four-year, large, highly residential
#'}
#'
#'\item{hbcu:}{historically black college or university
#'
#'1 = yes, 0 = no}
#'
#'\item{openadmp:}{does the college have an open admissions policy, that is, does it accept any students that apply or have minimal requirements for admission?
#'
#'  1 = yes, 0 = no}
#'
#'\item{adm_rate:}{fall admissions rate, defined as the number of admitted undergraduates divided by the number of undergraduates who applied}
#'
#'\item{sat_avg:}{average SAT score (or equivalent) for admitted students}
#'
#'\item{ugds:}{number of degree-seeking undergraduate students enrolled in the fall term}
#'
#'\item{ugds_men:}{proportion of ugds who are men}
#'
#'\item{ugds_women:}{proportion of ugds who are women}
#'
#'\item{ugds_white:}{proportion of ugds who are white (based on self-reports)}
#'
#'\item{ugds_black:}{proportion of ugds who are black/African American (based on self-reports)}
#'
#'\item{ugds_hisp:}{proportion of ugds who are Hispanic (based on self-reports)}
#'
#'\item{ugds_asian:}{proportion of ugds who are Asian (based on self-reports)}
#'
#'\item{ugds_other:}{proportion of ugds who have other race/ethnicity (created from other categories on original data file; race/ethnicity proportions sum to 1)}
#'
#'\item{npt4:}{average net price of attendance, derived from the full cost of attendance, 
#'including tuition and fees, books and supplies, and living expenses,
#'minus federal, state, and institutional grant scholarship aid, for full time, 
#'first time undergraduate Title IV receiving students.
#'NPT4 created from scorecard data variables NPT4_PUB if public institution and 
#'NPT4_PRIV if private}
#'
#'\item{tuitionfee_in:}{in-state tuition and fees}
#'
#'\item{tuitionfee_out:}{out-of-state tuition and fees}
#'
#'\item{avgfacsal:}{average faculty salary per month}
#'
#'\item{pftfac:}{proportion of faculty that is full-time}
#'
#'\item{c150_4:}{proportion of first-year, full-time students who complete their degree within 150\% of the expected time to complete; for most institutions, this is the proportion of students who receive a degree within 6 years}
#'
#'\item{grads:}{number of graduate students}
#'}
#'
#'
#'
#' @docType data
#'
#' @usage data(college)
#'
#'
#'
#' @keywords datasets
#' 
#'@references U.S. Department of Education (2020). College scorecard data.
#' \href{https://collegescorecard.ed.gov/data/}{https://collegescorecard.ed.gov/data/} (accessed August 25, 2020).
#'
#' @references Lohr (2021), Sampling: Design and Analysis, 3rd Edition. Boca Raton, FL: CRC Press.
#' 
#'@references Lu and Lohr (2021), R Companion for \emph{Sampling: Design and Analysis, 3rd Edition}, 1st Edition. Boca Raton, FL: CRC Press. 
#' 
#'
"college"

