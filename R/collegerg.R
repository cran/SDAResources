#' collegerg data
#' 
#'Five replicate SRSs from the set of public colleges and universities (having
#'control = 1) in college data. Columns 1-29 are as in college data , with additional columns
#'30-32 listed below. Note that the selection probabilities and sampling weights are for the
#'separate replicate samples, so that the weights for each sample sum to the population size 500.
#' 
#'
#'
#' @format This data frame contains the following columns:
#'
#'selectionprob: Selection probability for each replicate sample
#'
#'samplingweight: Sampling weight for each replicate sample
#'
#'repgroup: Replicate group number
#'
#' @docType data
#'
#' @usage data(collegerg)
#'
#'
#'
#' @keywords datasets
#'
#' @references Lohr (2021). Sampling: Design and Analysis, 3rd Edition.
#' 
#'
"collegerg"