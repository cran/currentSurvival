\name{stretch}
\alias{stretch}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Assigns Survival Estimates to Each Day of the Follow-up }
\description{
This is an internal function and is not usually called by user. \cr
This function assigns survival estimates to each day of the follow-up.
}
\usage{
stretch(S, maxx)
}

\arguments{
  \item{S}{ a list containing: \cr
            x - the time points in which the survival curve has a step \cr
            y - survival estimates at the time points in which the survival curve has a step }
  \item{maxx}{ maximum follow-up time in days }
}

\value{ a list containing the following elements:
  \item{x}{ days from 0 to maximum follow-up time \env{maxx} }
  \item{y}{ survival estimates at each day }
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
