% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multinomial_impute.R
\name{multinomial_impute}
\alias{multinomial_impute}
\title{Impute Values for missing multinomial values}
\usage{
multinomial_impute(dat, method = c("EM", "DA"), conj_prior = c("none",
  "data.dep", "flat.prior", "non.informative"), alpha = NULL,
  verbose = FALSE, ...)
}
\arguments{
\item{dat}{A \code{data.frame}. All variables must be factors.}

\item{method}{\code{c("EM", "DA")} A string specifying EM or Data Augmentation (DA)}

\item{conj_prior}{A string specifying the conjugate prior. One of 
\code{c("none", "data.dep", "flat.prior", "non.informative")}.}

\item{alpha}{The vector of counts \eqn{\alpha} for a \eqn{Dir(\alpha)} prior. Must be specified if 
\code{conj_prior} is either \code{c("data.dep", "flat.prior")}. If \code{flat.prior}, specify 
as a scalar. If \code{data.dep}, specify as a vector with key matching \code{enum_comp}.}

\item{verbose}{Logical. If \code{TRUE}, provide verbose output on each iteration.}

\item{...}{Arguments to be passed to other methods}
}
\value{
An object of class \code{\link{imputeMulti-class}}
}
\description{
Impute values for multivariate multinomial data using either EM or Data
Augmentation.
}
\examples{
\dontrun{
 data(tract2221)
 imputeEM <- multinomial_impute(tract2221[,1:4], method= "EM",
                   conj_prior = "none", verbose= TRUE)
 imputeDA <- multinomial_impute(tract2221[,1:4], method= "DA",
                   conj_prior = "non.informative", verbose= TRUE)
}

}
\references{
Schafer, Joseph L. Analysis of incomplete multivariate data. Chapter 7. 
CRC press, 1997.
}
\seealso{
\code{\link{data_dep_prior_multi}}, \code{\link{multinomial_em}}
}

