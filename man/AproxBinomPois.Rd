% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AproxBinomPois.R
\name{AproxBinomPois}
\alias{AproxBinomPois}
\title{Illustration of the Poisson approximation to Binomial}
\usage{
AproxBinomPois(n, p, xlab = "x", ylab = "Probability Mass",
  main = "Poisson approximation to Binomial distribution", col1 = "grey",
  col2 = "red")
}
\arguments{
\item{n}{number of independent Bernoulli trials.}

\item{p}{probability of success associated with the Bernoulli trial.}

\item{xlab}{x-axis label; default to "x".}

\item{ylab}{y-axis label; default to "Probability Mass".}

\item{main}{an overall title for the plot; default to "Poisson approximation to Binomial distribution".}

\item{col1}{a single colour associated with the Binomial probability mass function; default to "grey".}

\item{col2}{a single colour associated with the Poisson probability mass function; default to "red".}
}
\value{
This function is called for the side effect of drawing the plot.
}
\description{
\code{AproxBinomPois} represents the probability mass associated with a Binomial distribution with certain parameters \code{n} and \code{p} joint with the Poisson distribution with mean equal to \code{np}.
Note that the Binomial distribution can be approximated by a Poisson distribution when certain conditions are met (see Details).
}
\details{
The approximation is accurate only if one of these conditions is met:

- \code{p} in (0,0.1), \code{n}>=30 and \code{np}<5,

- \code{p} in (0.9,1), \code{n}>=30 and \code{n(1-p)}<5. Note that given X1 a Binomial distribution with
parameters \code{n} and \code{p}, and X2 a Binomial distribution with parameters \code{n}
and \code{1-p}, it follows that P(X1=a)=P(X2=n-a). Then, the variable X2 can be approximated to a Poisson distribution
with parameter \code{lambda=n(1-p)} and this Poisson distribution can be used in order to approximate the mass
probability function associated with X1.
}
\examples{
n=50;p=0.93
AproxBinomPois(n,p)
n=100;p=0.03
AproxBinomPois(n,p)
}
