#' schools data
#'
#' Math and reading test results from a two-stage cluster sample of tenth-grade
#'students. An SRS of 10 schools was selected from the 75 schools in the population, and
#'then 20 students were sampled from each school. These data are fictional, but the summary
#'statistics are consistent with those seen in educational studies
#'
#'
#'
#' @format This data frame contains the following columns:
#'
#'schoolid: School number (use as cluster variable)
#'
#'gender: Gender of student (character variable, F = female, M = male)
#'
#'math: Score on math test
#'
#'reading: Score on reading test
#'
#'mathlevel: Category level for math test score:
#'
#'\{1 if 1 <= math <= 40
#'
#'2 if 41 <= math\}
#'
#'readlevel: Category level for reading test score:
#'
#'\{1 if 1 <= read <= 32
#'
#'2 if 33 <= read <= 50\}
#'
#'Mi: Number of students in school, M_i
#'
#'finalwt: Weight for student in sample
#'
#'
#' @docType data
#'
#' @usage data(schools)
#'
#'
#'
#' @keywords datasets
#'
#' @references Lohr (2021). Sampling: Design and Analysis, 3rd Edition.
#' 
#'
"schools"