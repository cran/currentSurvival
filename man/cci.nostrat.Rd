\name{cci.nostrat}
\alias{cci.nostrat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Estimates Current Cumulative Incidence (CCI) and Common Cumulative Incidence (comCI) Functions Without Stratification }
\description{
This is an internal function and is not usually called by user. \cr
This function estimates the unstratified current cumulative incidence (CCI), i.e. the probability that a patient is alive and in any disease remission after initiating his or her therapy. Optionally, this function estimates the unstratified common cumulative incidence (comCI) function.
}
\usage{
cci.nostrat(data, maxx = NULL, com.est = TRUE, conf.int = FALSE,
            conf.int.level = NULL, no.iter = NULL, 
            points = NULL, fig = TRUE)
}

\arguments{
  \item{data}{ a matrix with ascending times from therapy initiation to occurrence of individual events (in days, i.e. positive integer values), total follow-up times from therapy initiation to data cut-off date (in days), and censoring indicators; the size of the data matrix is \emph{n} times (2*\emph{r}+2), where \emph{n} is the number of patients and \emph{r} is the maximum number of disease remissions achieved by patients; the data matrix consists of the following columns: \cr
data[,1] is the time from therapy initiation to achievement of the first disease remission \cr
data[,2] is the time from therapy initiation to loss of the first disease remission \cr
data[,3] is the time from therapy initiation to achievement of the second disease remission \cr
\dots \cr
data[,2*\emph{r}-1] is the time from therapy initiation to achievement of the \emph{r}th disease remission \cr
data[,2*\emph{r}] is the time from therapy initiation to loss of the \emph{r}th disease remission \cr
data[,2*\emph{r}+1] is the follow-up time (time from the therapy initiation to death or to the date of last contact with a patient) \cr
data[,2*\emph{r}+2] is the censoring indicator (1..patient died, 0..patient is censored) }
  \item{maxx}{ maximum follow-up time calculated from therapy initiation in days (defining time period for which the point estimates will be computed and curves will be plotted). Setting \env{maxx} smaller than the maximum follow-up time enables creating plots without fluctuating curve ends that may be caused by small number of patients. The default value is the maximum follow-up time (i.e. max(data[,2*\emph{r}+1])). }
  \item{com.est}{ a logical value indicating whether common cumulative incidence function should be estimated. The default value is TRUE. }
  \item{conf.int}{ a logical value indicating whether confidence interval for the function(s) should be estimated. The default value is FALSE. }
  \item{conf.int.level}{ two-sided confidence interval level (must be in range 0.9 and 0.99). The default value is 0.95. }
  \item{no.iter}{ a number of bootstrap iterations for confidence interval computation (must be in range between 10 and 10,000). The default value is 100. }
  \item{points}{ time points in which the point estimates will be computed (in months). The default values are 0, 12, 24, ..., floor(\env{maxx}/(365/12)). }
  \item{fig}{ a logical value indicating whether a figure should be plotted. The default value is TRUE. }
}

\value{ a list containing the following elements:
  \item{no.risk}{ numbers of patients at risk at the defined time points }
  \item{pest}{ a matrix of point estimates (accompanied with confidence intervals) at the defined time points }
  \item{pest.day}{ a matrix of point estimates (accompanied with confidence intervals) at each day of the follow-up time }
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
# This is an internal function and is not usually called by user.
}

\keyword{ survival }
