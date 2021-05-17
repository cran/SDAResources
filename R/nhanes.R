#' nhanes data
#'
#' Selected variables from the 2015-2016 National Health and Nutrition Exami-
#'nation Survey (NHANES). Source: Centers for Disease Control and Prevention (2017). This
#'data set is made available for pedagogical purposes only. Anyone wishing to publish results
#'or draw conclusions from NHANES data should obtain the original data set from the source.
#'
#'The data files merged to create nhanes.csv can be read directly from the SAS transport
#'files DEMO_I.XPT , BMX_I.XPT , TCHOL_I.XPT , and BPX_I.XPT from the NHANES website.
#'This data set is provided for educational purposes only. Anyone wishing to publish or use
#'results from analyses of NHANES data should obtain the data files directly from the source.
#'
#'The blood pressure variables sbp and dbp were created as follows. In the medical examina-
#'  tion, three consecutive blood pressure readings were obtained after participants sat quietly
#'for 5 minutes and the maximum inflation level was determined. A fourth measurement was
#'conducted for some persons who had an incomplete or interrupted blood pressure reading.
#'The variables sbp and dbp were calculated by discarding the first blood pressure reading
#'and calculating the average of the remaining valid readings. Note that some of the diastolic
#'blood pressure readings are 0.
#' 
#'
#'
#' @format This data frame contains the following columns:
#'
#'sdmvstra: Pseudo-stratum. (These are groups of secondary sampling units used for variance estimation on the publicly available data. Pseudo-strata and pseudo-psus are released instead of the actual strata and psus to protect the confidentiality of respondents' information. Use sdmvstra as the variable defining the strata.)
#'
#'sdmvpsu: Pseudo-psu. Use sdmvpsu as the primary sampling unit (psu). (There are two pseudo-psus per pseudo-stratum, numbered 1 and 2.)
#'
#'wtint2yr: Interview weight (use as weight for variables 5-12)
#'
#'wtmec2yr: Mobile Examination Center weight (use as weight for any analysis involving variables 13-25)
#'
#'ridstatr: Interview/examination status, (= 1 if interviewed only, = 2 if interviewed and had medical examination)
#'
#'ridageyr: Age in years at screening, from 0 to 80. (Anyone with age > 80 years is recorded (topcoded) as 80. No values are missing for this variable.)
#'
#'ridagemn: Age in months at screening (reported only for persons aged 24 months or younger at the time of exam, otherwise missing)
#'
#'riagendr: = 1 if male, 2 if female (no missing values)
#'
#'ridreth3: Race/ethnicity code (no missing values)
#'
#'\{1 = Mexican American
#'
#'2 = Other Hispanic
#'
#'3 = Non-Hispanic White
#'
#'4 = Non-Hispanic Black
#'
#'6 = Non-Hispanic Asian
#'
#'7 = Other Race, Including Multi-Racial
#'\}
#'
#'dmdeduc2: Education level of person interviewed (given for adults age 20+only)
#'
#'\{1 = Less than 9th grade
#'
#'2 = 9th to 11th grade (including 12th grade with no diploma)
#'
#'3 = High school graduate (including GED)
#'
#'4 = Some college or associate's degree
#'
#'5 = College graduate or above
#'
#'7 = Refused
#'
#'9 = Don't know
#'\}
#'
#'dmdfmsiz: Total number of people in the family. (Values 1-6 indicate the number of people is that number; value 7 indicates 7 or more people in family. No missing values.)
#'
#'indfmpir: Ratio of family income to poverty guideline. (A value less than 1 indicates the family is below the poverty threshold. Variable indfmpir is a continuous variable where values between 0 and 4.99 indicate the actual poverty ratio. A value of 5 indicates that the ratio of family income to the poverty guideline for that family is 5 or more.)
#'
#'bmxwt: Weight (kg)
#'
#'bmxht: Standing height (cm)
#'
#'bmxbmi: Body mass index (kg/m2), calculated as bmxwt/(bmxht/100) 2
#'
#'bmxwaist: Waist circumference (cm)
#'
#'bmxleg: Upper leg length (cm)
#'
#'bmxarml: Upper arm length (cm)
#'
#'bmxarmc: Upper arm circumference (cm)
#'
#'bmdavsad: Average sagittal abdominal diameter (SAD, the distance from the small of the back to the upper abdomen), in cm. Calculated by averaging the SAD readings on the person (up to four).
#'
#'lbxtc: Serum total cholesterol (mg/dL)
#'
#'bpxpls: 60-second pulse
#'
#'sbp: Average systolic blood pressure (mm Hg)
#'
#'dbp: Average diastolic blood pressure (mm Hg)
#'
#'bpread: Number of blood pressure readings
#'
#'
#'
#'
#' @docType data
#'
#' @usage data(nhanes)
#'
#'
#'
#' @keywords datasets
#'
#' @references Lohr (2021). Sampling: Design and Analysis, 3rd Edition.
#' 
#'
"nhanes"