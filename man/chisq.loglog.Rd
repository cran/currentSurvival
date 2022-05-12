\name{chisq.loglog}
\alias{chisq.loglog}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Compares Three or More Survival Estimates Using Complementary Log-log Test }
\description{
This is an internal function and is not usually called by user. \cr
This function computes chi-square test for the comparison of three or more survival curves at fixed points in time using complementary log-log transformation of the survival estimates.
}
\usage{
chisq.loglog(st, ot.sq)
}

\arguments{
  \item{st}{ point estimates at fixed points in time }
  \item{ot.sq}{ estimated variance }
}

\value{
chi-square test statistic
}

\author{
  Eva Janousova, Tomas Pavlik \cr
  Institute of Biostatistics and Analyses \cr
  Masaryk University, Brno, Czech Republic \cr
  \email{ janousova@iba.muni.cz }
}

\references{
Klein J.P., Logan B., Harhoff M., et al. (2007). Analyzing survival curves at a fixed point in time. \emph{Statistics in Medicine} \bold{26}:4505--4519.
}

\seealso{
\code{\link{cci}}, \code{\link{clfs}}, \code{\link{chisq.log}}, \code{\link{chisq.naive}}
}

\examples{
# This is an internal function and is not usually called by user.
}

\keyword{ survival }
