\name{cci.pest}
\alias{cci.pest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Estimates Current Cumulative Incidence (CCI) Function }
\description{
This is an internal function and is not usually called by user. \cr
This function estimates the current cumulative incidence (CCI), i.e. the probability that a patient is alive and in any disease remission after initiating his or her therapy.  
}
\usage{
cci.pest(E, LastContact, Exitus, maxx)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{E}{ a matrix with ascending times from therapy initiation to occurrence of individual events (in days); the size of the data matrix is \emph{n} times (2*\emph{r}), where \emph{n} is the number of patients and \emph{r} is the maximum number of disease remissions achieved by patients; the data matrix consists of the following columns: \cr
E[,1] is the time from therapy initiation to achievement of the first disease remission \cr
E[,2] is the time from therapy initiation to loss of the first disease remission \cr
E[,3] is the time from therapy initiation to achievement of the second disease remission \cr
\dots \cr
E[,2*\emph{r}-1] is the time from therapy initiation to achievement of the \emph{r}th disease remission \cr
E[,2*\emph{r}] is the time from therapy initiation to loss of the \emph{r}th disease remission }
  \item{LastContact}{ a vector containing the follow-up time (time from therapy initiation to death or to the date of last contact with a patient) }
  \item{Exitus}{ a vector containing the censoring indicators (1..patient died, 0..patient is censored) }
  \item{maxx}{ maximum follow-up time in days }
}

\value{
  \item{x}{ days from 0 to maximum follow-up time \env{maxx} }
  \item{y}{ CCI function estimates at each day }
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
