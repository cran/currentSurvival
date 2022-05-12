\name{clfs.pest}
\alias{clfs.pest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Estimates Current Leukaemia-Free Survival (CLFS) Function }
\description{
This is an internal function and is not usually called by user. \cr
This function estimates the current leukaemia-free survival (CLFS) function, i.e. the probability that a patient is alive and in any disease remission after achieving the first disease remission. Only patients who achieved at least one disease remission during their treatment course are used for the estimation of the CLFS function.
}
\usage{
clfs.pest(E, LastContact, Exitus, maxx)
}

\arguments{
  \item{E}{ a matrix with ascending times from achievement of the first disease remission to occurrence of individual events (in days); the size of the data matrix is \emph{n} times (2*\emph{r}-1), where \emph{n} is the number of patients and \emph{r} is the maximum number of disease remissions achieved by patients; the data matrix consists of the following columns: \cr
E[,1] is the time from achievement of the first disease remission to loss of the first disease remission \cr
E[,2] is the time from achievement of the first disease remission to achievement of the second disease remission \cr
E[,3] is the time from achievement of the first disease remission to loss of the second disease remission \cr
\dots \cr
E[,2*\emph{r}-2] is the time from achievement of the first disease remission to achievement of the \emph{r}th disease remission \cr
E[,2*\emph{r}-1] is the time from achievement of the first disease remission to loss of the \emph{r}th disease remission }
  \item{LastContact}{ a vector containing the follow-up time (time from achievement of the first disease remission to death or to the date of last contact with a patient) }
  \item{Exitus}{ a vector containing the censoring indicators (1..patient died, 0..patient is censored) }
  \item{maxx}{ maximum follow-up time in days }
}

\value{ a list containing the following elements:
  \item{x}{ days from 0 to maximum follow-up time \env{maxx} }
  \item{y}{ CLFS function estimates at each day }
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
\code{\link{clfs}}
}

\examples{
# This is an internal function and is not usually called by user.
}

\keyword{ survival }
