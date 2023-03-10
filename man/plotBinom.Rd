% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binomial.R
\name{plotBinom}
\alias{plotBinom}
\title{Probability Mass and/or Distribution Function Representations associated with a Binomial Distribution}
\usage{
plotBinom(n, p, type = "b", col = "grey")
}
\arguments{
\item{n}{the number of independent Bernoulli trials.}

\item{p}{the probability of success associated with the Bernoulli trial.}

\item{type}{a character string giving the type of desired plot. The following values are possible:
"b" (default) for probability mass function and distribution function representations together,
"d" for distribution function representation and "p" for probability mass function representation.}

\item{col}{a single colour associated with the probability mass function representation; default to "grey".}
}
\value{
A matrix containing the probability mass and the distribution function associated with each point
of the support of a Binomial distribution with parameters \code{n} and \code{p}.

This function is called for the side effect of drawing the plot.
}
\description{
\code{plotBinom} represents the probability mass and/or the distribution function associated with a Binomial
 distribution with certain parameters \code{n} and \code{p}.
}
\details{
Note that if \code{n=1}, the Binomial distribution is also known as Bernoulli distribution.
}
\examples{
n=10;p=0.3
plotBinom(n,p,type="d")
plotBinom(n,p,type="p",col="pink")
plotBinom(n,p)
}
