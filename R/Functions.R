#' Interval estimates using SRS formulae and formulae appropriate for cluster samples
#'
#'Simulate a population of clusters, then draw a simple random sample of clusters and construct interval estimates using incorrect 
#'SRS formulae and formulae appropriate for cluster samples.
#'
#'@importFrom stats rnorm t.test glm pchisq quasipoisson uniroot
#'@importFrom graphics abline lines par
#'@usage intervals_ex40(groupcorr, numintervals, groupsize, 
#'sampgroups, popgroups, mu, sigma)
#' @param groupcorr	The intracluster correlation coefficient rho
#' @param numintervals	Number of samples to be taken from population
#' @param groupsize	Number of elements in each population cluster
#' @param sampgroups	Number of clusters to be sampled
#' @param popgroups	Number of clusters in population
#' @param mu	Mean for generating population
#' @param sigma	Standard deviation for generating population
#' @return SRS_cover_prob:	proportion of intervals using SRS formulae that include the true population mean mu
#' @return cl_cover_prob: proportion of intervals using cluster sampling formulae 
#' that include the true population mean mu
#' @return SRS_mean_CI_width:	the average width of the interval estimates from SRS
#' @return Cluster_mean_CI_width:	the average width of the interval estimates from cluster sampling
#' @return Replicate:	Simulation replicate
#' @return srs_lci:	lower limit of CI from SRS
#' @return srs_uci:	upper limit of CI from SRS
#' @return clus_lci:	lower limit of CI from cluster sampling
#' @return clus_uci:	upper limit of CI from cluster sampling
#' @return scatter plot: first graph shows scatter plot of the last simulated sample
#' @return CI plots: second graph shows interval estimates produced for each sample if analyzed as an SRS
#'  (with red interval not containing the true parameter), and the third shows the interval estimates produced for each sample 
#'  when analyzed as a cluster sample.
#'  
#'@examples 
#' # default setting
#' intervals_ex40(groupcorr = 0, numintervals = 100, groupsize = 5, 
#' sampgroups = 10, popgroups = 5000,mu = 0, sigma = 1)
#' # change groupcorr and leave others as default setting
#' intervals_ex40(groupcorr = 0.3)
#' intervals_ex40(groupcorr = 0.7, numintervals = 100, groupsize = 5, 
#' sampgroups = 10, popgroups = 5000,mu = 0, sigma = 1)
#' @export  
intervals_ex40 <- function (groupcorr = 0, numintervals = 100, groupsize = 5, sampgroups = 10, 
                            popgroups = 5000, mu = 0, sigma = 1) 
{
  if (groupcorr < 0 | groupcorr > 1) 
    stop("correlation must be between 0 and 1")
  betweenvar <- groupcorr * sigma^2
  withinvar <- sigma^2 * (1 - groupcorr)
  group <- rep(1:sampgroups, each = groupsize)
  gpmeans <- rnorm(popgroups, mu, sqrt(betweenvar))
  yy <- rep(gpmeans, each = groupsize) + rnorm(popgroups * 
                                                 groupsize, 0, sqrt(withinvar))
  yy <- matrix(yy, nrow = groupsize, ncol = popgroups)
  indci <- matrix(0, ncol = 2, nrow = numintervals)
  clci <- indci
  yy <- yy - mean(yy) + mu
  mysampmean <- rep(0, numintervals)
  indciwidth <- rep(0, numintervals)
  clciwidth <- rep(0, numintervals)
  for (i in 1:numintervals) {
    sampindex <- sample(1:popgroups, sampgroups)
    mysamp <- yy[, sampindex]
    indci[i, ] <- t.test(as.vector(mysamp))$conf.int
    sampmeans <- apply(mysamp, 2, mean)
    clci[i, ] <- t.test(sampmeans)$conf.int
    mysampmean[i] <- mean(mysamp)
    indciwidth[i] <- indci[i, 2] - indci[i, 1]
    clciwidth[i] <- clci[i, 2] - clci[i, 1]
  }
  indcover <- indci[, 1] < mu & indci[, 2] > mu
  indcol <- rep("black", numintervals)
  indcol[!indcover] <- "red"
  clcover <- clci[, 1] < mu & clci[, 2] > mu
  clcol <- rep("black", numintervals)
  clcol[!clcover] <- "red"
  indcount <- rep(0, numintervals)
  clcount <- rep(0, numintervals)
  for (i in 1:numintervals) {
    if (indcover[i] == TRUE) {
      indcount[i] = 1
    }
    else {
      indcount[i] = 0
    }
  }
  for (i in 1:numintervals) {
    if (clcover[i] == TRUE) {
      clcount[i] = 1
    }
    else {
      clcount[i] = 0
    }
  }
  print(c(Number_of_intervals = numintervals, SRS_cover_prob = sum(indcount)/numintervals, 
          Cluster_cover_prob = sum(clcount)/numintervals, SRS_mean_CI_width = mean(indci[, 
                                                                                         2] - indci[, 1]), Cluster_mean_CI_width = mean(clci[, 
                                                                                                                                             2] - clci[, 1])))
  print(cbind(Replicate = rep(1:5), mu = rep(0, 5), sample_mean = mysampmean[1:5], 
              srs_lci = indci[1:5, 1], srs_uci = indci[1:5, 2], in_srs_ci = indcount[1:5], 
              SRS_CI_width = (indci[1:5, 2] - indci[1:5, 1]), clus_lci = clci[1:5, 
                                                                              1], clus_uci = clci[1:5, 2], in_clu_ci = clcount[1:5], 
              clus_CI_width = (clci[1:5, 2] - clci[1:5, 1])))
  oldpar <- par(no.readonly = TRUE)    # code line 94
  on.exit(par(oldpar))            # code line 95
  par(mfrow = c(1, 3))
  plot(group, as.vector(mysamp), main = paste("Data values from sample", 
                                              numintervals), xlab = "group number", ylab = "x")
  plot(indci[, 1], 1:numintervals, type = "n", xlim = c(-2 * 
                                                          sigma + mu, 2 * sigma + mu), ylab = "interval", 
       xlab = "", main = "assuming SRS")
  abline(v = mu)
  for (i in 1:numintervals) lines(c(indci[i, 1], indci[i, 2]), 
                                  c(i, i), col = indcol[i])
  plot(clci[, 1], 1:numintervals, type = "n", xlim = c(-2 * 
                                                         sigma + mu, 2 * sigma + mu), ylab = "interval", 
       xlab = "", main = "using sampling design")
  abline(v = mu)
  for (i in 1:numintervals) lines(c(clci[i, 1], clci[i, 2]), 
                                  c(i, i), col = clcol[i])
}

#' Empirical mass function
#' 
#' Calculates the empirical probability mass function for a variable with associated weights.
#' @usage emppmf(y, weight)
#' @param y	Numerical variable
#' @param weight Associated weights of the variable of interest, default weight is rep(1,length(y))
#' @return vals: the distinct values of \emph{y} 
#' @return epmf: empirical probability mass function corresponding to each 
#' \emph{y} in vals
#'@examples emppmf(seq(1:10))
#' emppmf(htsrs$height, rep(2000/200,200))
#' @export  
emppmf  <-  function(y, weight=rep(1,length(y))) {
  # Calculate the empirical probability mass function
  # Outputs both the y values and the epmf.
  epmf = tapply(weight, y, sum, na.rm=T)/sum(weight[!is.na(y)],na.rm=T) 
  vals = as.numeric(names(epmf))
  # cbind(vals,epmf)
  list(vals=vals,epmf=epmf)
}


#' Capture-recapture confidence interval function
#'
#' Compute a confidence interval for a capture-recapture sample using the method of Cormack (1992).

#' @usage captureci(xmat, y, alpha)
#' @param xmat Define 1 = in sample and 0 = not in sample. For example, if there are two samples, 
#' xmat has two columns; the row (1,0) represents the category of being in sample 1 but not in sample 2.
#' @param y Number of units corresponding to xmat.
#' @param alpha Confidence level with a default value of 0.05.
#' @return cell: estimated cell value for the missing count of category (0, 0)
#' @return N: the estimated total counts 
#' @return CI_cell: the estimated confidence interval for the missing category count
#' @return CI_N: the estimated confidence interval for total counts
#' @examples 
#' xmat <- cbind(c(1,1,0),c(1,0,1))
#' y <- c(20,180,80)
#' captureci(xmat, y, alpha = 0.1)
#' @export  
captureci <- function(xmat, y, alpha = 0.05)
{
  loglinlrt<-function(u, x,y,lrti, alpha=.05 )
  {
    dev <- glm(c(y,u)~rbind(x,rep(0,ncol(x))),family=quasipoisson(link="log"))$deviance
    1 - pchisq(dev -lrti, 1) - alpha
  }
  glimfit<-glm(y~xmat[1:length(y),],family=quasipoisson(link="log"))
  sumobs<-sum(y)
  predmiss <- exp(glimfit$coef[1] )
  lrti<-glimfit$deviance
  lowroot<- uniroot(loglinlrt,lower=0,upper=predmiss,x=xmat,y=y,lrti=lrti,alpha=alpha)$root
  highroot<-uniroot(loglinlrt,lower=predmiss,upper=50*(sumobs+predmiss),
                    x=xmat,y=y,lrti=lrti,alpha=alpha)$root
  list(cell = predmiss,N = predmiss+sumobs,CI_cell=c(lowroot,highroot),
       CI_N=c(lowroot+sumobs,highroot+sumobs))
}
