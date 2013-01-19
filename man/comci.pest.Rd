\name{comci.pest}
\alias{comci.pest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Estimates Common Cumulative Incidence (comCI) Function }
\description{
This is an internal function and is not usually called by user. \cr
This function estimates the common cumulative incidence (comCI), i.e. the probability that a patient is alive and in the first disease remission after initiating his or her therapy.
}
\usage{
comci.pest(t, LastContact, Exitus, maxx)
}

\arguments{
  \item{t}{ a vector containing the time from therapy initiation to achievement of the first disease remission (in days) }
  \item{LastContact}{ a vector containing the follow-up time (time from therapy initiation to death or to the date of last contact with a patient) }
  \item{Exitus}{ a vector containing the censoring indicators (1..patient died, 0..patient is censored) }
  \item{maxx}{ maximum follow-up time in days }
}

\value{ a list containing the following elements:
  \item{x}{ days from 0 to maximum follow-up time \env{maxx} }
  \item{y}{ comCI function estimates at each day }
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
