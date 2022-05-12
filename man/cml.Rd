\name{cml}
\alias{cml}
\docType{data}
\title{ Data of Patients With Chronic Myeloid Leukaemia }
\description{
data of patients with chronic myeloid leukaemia
}
\usage{data(cml)}
\format{
  A data frame with 104 observations on the following 10 variables.
  \describe{
    \item{\code{CCgR01}}{ time from therapy initiation to achievement of the first disease remission }
    \item{\code{loss_CCgR01}}{ time from therapy initiation to loss of the first disease remission }
    \item{\code{CCgR02}}{ time from therapy initiation to achievement of the second disease remission }
    \item{\code{loss_CCgR02}}{ time from therapy initiation to loss of the second disease remission } 
    \item{\code{CCgR03}}{ time from therapy initiation to achievement of the third disease remission }
    \item{\code{follow.up}}{ follow-up time (time from therapy initiation to death or to the date of last contact with a patient) }
    \item{\code{death}}{ censoring indicator (1..patient died, 0..patient is censored) }
    \item{\code{sokal}}{ Sokal score (1..low-risk, 2..intermediate-risk, 3..high-risk) }
    \item{\code{euro}}{ Euro score (1..low-risk, 2..intermediate-risk, 3..high-risk) }
    \item{\code{eutos}}{ EUTOS score (0..low-risk, 1..high-risk) }
  }
}

\source{ population-based, observational study, INFINITY (\url{https://www.leukemia-cell.org/index-en.php?pg=infinity--project-information}) }

\references{ 
Pavlik T., Janousova E., Pospisil Z., et al. (2011). Estimation of current cumulative incidence of leukaemia-free patients and current leukaemia-free survival in chronic myeloid leukaemia in the era of modern pharmacotherapy. \emph{BMC Med Res Methodol} \bold{11}:140.
}

\examples{
data(cml)
str(cml)
}

\keyword{datasets}
