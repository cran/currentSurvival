\name{clfs}
\alias{clfs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Estimates Current Leukaemia-Free Survival (CLFS) and Common Leukaemia-Free Survival (LFS) Functions }
\description{
This function estimates the current leukaemia-free survival (CLFS), i.e. the probability that a patient is alive and in any disease remission (e.g. complete cytogenetic remission in chronic myeloid leukaemia) after achieving the first disease remission. Optionally, this function estimates the common leukaemia-free survival (LFS), i.e. the probability that a patient is alive and in the first disease remission after achieving the first disease remission. The CLFS and LFS curves can also be stratified by risk factors. Moreover, statistical test can be applied to compare the risk groups. Only patients who achieved at least one disease remission during their treatment course are used for the estimation of the CLFS and LFS functions.
}
\usage{
clfs(data, maxx = NULL, com.est = TRUE, conf.int = FALSE,
     conf.int.level = NULL, no.iter = NULL, points = NULL,
     fig = TRUE, strat = FALSE, pvals = FALSE, pval.test = NULL)
}

\arguments{
  \item{data}{ a matrix with ascending times from therapy initiation to occurrence of individual events (in days, i.e. positive integer values), total follow-up times from therapy initiation to data cut-off date (in days), and censoring indicators; moreover, a vector for stratification factor may be included;  \cr
if no stratification factor is included, the size of the data matrix is \emph{n} times (2*\emph{r}+2), where \emph{n} is the number of patients and \emph{r} is the maximum number of disease remissions achieved by patients; \cr
if the data contain a stratification factor, the size of the data matrix is \emph{n} times (2*\emph{r}+3), where \emph{n} is the number of patients and \emph{r} is the maximum number of disease remissions achieved by patients; \cr
the data matrix consists of the following columns: \cr
data[,1] is the time from therapy initiation to achievement of the first disease remission \cr
data[,2] is the time from therapy initiation to loss of the first disease remission \cr
data[,3] is the time from therapy initiation to achievement of the second disease remission \cr
\dots \cr 
data[,2*\emph{r}-1] is the time from therapy initiation to achievement of the \emph{r}th disease remission \cr
data[,2*\emph{r}] is the time from therapy initiation to loss of the \emph{r}th disease remission \cr
data[,2*\emph{r}+1] is the follow-up time (time from the therapy initiation to death or to the date of last contact with a patient) \cr
data[,2*\emph{r}+2] is the censoring indicator (1..patient died, 0..patient is censored) \cr
(data[,2*\emph{r}+3] is the stratification factor (maximum number of stratification levels is 8 because of figure clarity)) }
  \item{maxx}{ maximum follow-up time calculated from the achievement of the first disease remission in years (defining time period for which the point estimates will be computed and curves will be plotted). Setting \env{maxx} smaller than the maximum follow-up time enables creating plots without fluctuating curve ends that may be caused by small number of patients. The default value is the maximum follow-up time except the time from therapy initiation to achievement of the first disease remission (i.e. max(data[,2*\emph{r}+1]-data[,1])/365). }
  \item{com.est}{ a logical value indicating whether common leukaemia-free survival function should be estimated. The default value is TRUE. }
  \item{conf.int}{ a logical value indicating whether confidence interval for the function(s) should be estimated. The default value is FALSE. }
  \item{conf.int.level}{ two-sided confidence interval level (must be in range 0.9 and 0.99). The default value is 0.95. }
  \item{no.iter}{ a number of bootstrap iterations for confidence interval computation (must be in range between 10 and 10,000). The default value is 100. }
  \item{points}{ time points in which the point estimates will be computed (in months). The default values are 0, 12, 24, ..., floor(\env{maxx}/(365/12)). }
  \item{fig}{ a logical value indicating whether a figure should be plotted. The default value is TRUE. }
  \item{strat}{ a logical value indicating whether a stratification factor is included. The default value is FALSE. }
  \item{pvals}{ a logical value indicating whether p-values for the comparison of stratified curves at pre-defined time points should be computed. The default value is FALSE. }
  \item{pval.test}{ a type of a test that will be used for the computation of p-values. Possible values are \dQuote{naive}, \dQuote{log},  \dQuote{loglog}. The default value is \dQuote{loglog}. }
}

\value{ a list containing the following elements:
  \item{no.risk}{ numbers of patients at risk at the defined time points }
  \item{pest}{ a matrix of point estimates (accompanied with confidence intervals) at the defined time points }
  \item{pest.day}{ a matrix of point estimates (accompanied with confidence intervals) at each day of the follow-up time }
  \item{pval}{ p-values for the comparison of point estimates at the defined time points }
  \item{summary}{ summary of input data }
}

\author{
  Eva Janousova, Tomas Pavlik \cr
  Institute of Biostatistics and Analyses \cr
  Masaryk University, Brno, Czech Republic \cr
  \email{ janousova@iba.muni.cz }
}

\references{
Pavlik T., Janousova E., Pospisil Z., et al. (2011). Estimation of current cumulative incidence of leukaemia-free patients and current leukaemia-free survival in chronic myeloid leukaemia in the era of modern pharmacotherapy. \emph{BMC Med Res Methodol} \bold{11}:140.
}

\seealso{
\code{\link{cci}}
}

\examples{
## 4 examples of CLFS estimation without stratification (and 
## LFS estimation) with and without confidence intervals:
data(cml)  # load example data set
cml <- cml[,c(1:7)] # select event and follow-up times and death
           # (stratification factor is not included)
res <- clfs(cml) # CLFS + LFS without confidence intervals
res <- clfs(cml, com.est=FALSE) # CLFS without confidence
           # intervals
\dontrun{
res <- clfs(cml, conf.int=TRUE, no.iter=10) # CLFS + LFS with 
           # confidence intervals
res <- clfs(cml, com.est=FALSE, conf.int=TRUE, no.iter=10) # CLFS
           # with confidence intervals }

## 4 examples of CLFS estimation with stratification (and LFS 
## estimation) with and without confidence intervals:
data(cml)  # load example data set
cml <- cml[,c(1:7,10)] # select event and follow-up times, death,
           # and the EUTOS score as a stratification parameter
res <- clfs(cml, strat=TRUE) # stratified CLFS + LFS without 
           # confidence intervals
res <- clfs(cml, com.est=FALSE, strat=TRUE) # stratified CLFS 
           # without confidence intervals
\dontrun{
res <- clfs(cml, conf.int=TRUE, no.iter=10, strat=TRUE, pvals=TRUE)
           # stratified CLFS + LFS with confidence intervals
res <- clfs(cml, com.est=FALSE, conf.int=TRUE, no.iter=10, 
           strat=TRUE, pvals=TRUE) # stratified CLFS with 
           # confidence intervals }

\dontrun{
## As the function does not allow setting plot option (e.g. line
## colour, width and type), you can create a plot using the 
## following commands:
data(cml)  # load example data set
cml <- cml[,c(1:7)] # select event and follow-up times and death
           # (stratification factor is not included)
res <- clfs(cml, conf.int=TRUE, no.iter=10) # CLFS + LFS with 
           # confidence intervals
maxx <- max(res$pest.day[,1]) # maximum follow-up time in days
x=0:maxx
yrs <- floor(maxx/365) # maximum follow-up time in years
plot(0,1,pch='.',cex=0.01,xlim=c(0,maxx),ylim=c(0,1),axes=FALSE,
     xlab="Years after achievement of the first remission",
     ylab="Probability") # plot initialization
axis(2,at=seq(0,1,0.2)) # setting of points where tick-marks are
     # to be drawn on the y-axis
axis(1,at=seq(0,((yrs+1)*365),365),labels=seq(0,(yrs+1),1)) 
     # setting of points where tick-marks are to be drawn on the
     # x-axis
lines(x,res$pest.day[,2],type="S",lty=1,lwd=1) # lower confidence
     # interval for the CLFS function estimate
lines(x,res$pest.day[,3],type="S",lty=1,lwd=2) # CLFS estimate
lines(x,res$pest.day[,4],type="S",lty=1,lwd=1) # upper confidence
     # interval for the CLFS function estimate
lines(x,res$pest.day[,5],type="S",lty=2,lwd=1) # lower confidence 
     # interval for the LFS function estimate
lines(x,res$pest.day[,6],type="S",lty=2,lwd=2) # LFS estimate
lines(x,res$pest.day[,7],type="S",lty=2,lwd=1) # upper confidence
     # interval for the LFS function estimate
legend("bottomright",legend=c("CLFS","95\% conf. int.","LFS",
       "95\% conf. int."),lwd=c(2,1,2,1),lty=c(1,1,2,2),bty="n",
       cex=0.9) }

}

\keyword{ survival }
