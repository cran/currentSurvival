\name{pvals.2cat}
\alias{pvals.2cat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Computes p-Values for The Comparison of Two Survival Curves at Fixed Points in Time }
\description{
This is an internal function and is not usually called by user. \cr
This function computes p-values for the comparison of two survival curves at fixed time points. 
}
\usage{
pvals.2cat(pest, pval.test)
}

\arguments{
  \item{pest}{ a matrix of point estimates accompanied with confidence intervals at fixed time points }
  \item{pval.test}{ a type of a test used for the computation of p-values. Possible values are \dQuote{naive}, \dQuote{log},  \dQuote{loglog}. The default value is \dQuote{loglog}. }
}

\value{
a vector containing p-values for the comparison of the point estimates at fixed time points
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
\code{\link{cci}}, \code{\link{clfs}}, \code{\link{pvals.cat}}
}

\examples{
# This is an internal function and is not usually called by user.
}

\keyword{ survival }
