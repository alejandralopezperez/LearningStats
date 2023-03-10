% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diffproportion.CI.R
\name{diffproportion.CI}
\alias{diffproportion.CI}
\title{Large Sample Confidence Interval for the Difference between Two Population Proportions}
\usage{
diffproportion.CI(x1, x2, n1, n2, conf.level)
}
\arguments{
\item{x1}{a single numeric value corresponding with either the proportion estimate or the number of successes of one of the samples.}

\item{x2}{a single numeric value corresponding with either the proportion estimate or the number of successes of the other sample.}

\item{n1}{a single positive integer value corresponding with one sample size.}

\item{n2}{a single positive integer value corresponding with the other sample size.}

\item{conf.level}{a single numeric value corresponding with the confidence level of the interval; must be a value in (0,1).}
}
\value{
A list containing the following components:
\item{estimate}{a numeric value corresponding with the difference between the two sample proportions.}
\item{CI}{a numeric vector of length two containing the lower and upper bounds of the confidence interval.}
Independently on the user saving those values, the function provides a summary of the result on the console.
}
\description{
\code{diffproportion.CI} provides a pointwise estimation and a confidence interval for the difference between two population proportions.
}
\details{
Counts of successes and failures must be nonnegative and hence not greater than the corresponding numbers of trials which must be positive. All finite counts should be integers.
If the number of successes are given, then the proportion estimate is computed.
}
\examples{
#Given the sample proportion estimate
diffproportion.CI(0.3,0.4,100,120,conf.level=0.95)

#Given the number of successes
diffproportion.CI(30,48,100,120,conf.level=0.95)

#Given in one sample the number of successes and in the other the proportion estimate
diffproportion.CI(0.3,48,100,120,conf.level=0.95)

}
