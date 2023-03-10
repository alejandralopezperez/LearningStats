% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diffproportion.test.R
\name{diffproportion.test}
\alias{diffproportion.test}
\title{Two Sample Proportion Test}
\usage{
diffproportion.test(x1, x2, n1, n2, alternative = "two.sided",
  alpha = 0.05, plot = TRUE, lwd = 1)
}
\arguments{
\item{x1}{a single numeric value corresponding with either the proportion estimate or the number of successes of one of the samples.}

\item{x2}{a single numeric value corresponding with either the proportion estimate or the number of successes of the other sample.}

\item{n1}{a single positive integer value corresponding with one sample size.}

\item{n2}{a single positive integer value corresponding with the other sample size.}

\item{alternative}{a character string specifying the alternative hypothesis, must be one of
"\code{two.sided}" (default), "\code{greater}" or "\code{less}".}

\item{alpha}{single number in (0,1) corresponding with the significance level.}

\item{plot}{a logical value indicating whether to display a graph including the test statistic value for the sample, its distribution, the rejection region and p-value.}

\item{lwd}{single number indicating the line width of the plot.}
}
\value{
A list with class "\code{lstest}" and "\code{htest}" containing the following components:
\item{statistic}{the value of the test statistic.}
\item{parameter}{the sample size \code{n1}.}
\item{p.value}{the p-value of the test.}
\item{estimate}{the difference of sample proportions.}
\item{null.value}{the value specified by the null.}
\item{alternative}{a character string describing the alternative.}
\item{method}{a character string indicating the method used.}
\item{data.name}{a character string giving the names of the data.}
\item{alpha}{the significance level.}
\item{dist.name}{a character string indicating the distribution of the test statistic.}
\item{statformula}{a character string with the statistic's formula.}
\item{reject.region}{a character string with the reject region.}
}
\description{
\code{diffproportion.test} allows to compute hypothesis tests about two population proportions.
}
\details{
Counts of successes and failures must be nonnegative and hence not greater than the corresponding
numbers of trials which must be positive. All finite counts should be integers. If the number of successes
is given, then the proportion estimate is computed.
}
\examples{
x1 <- rbinom(1, 120, 0.6)
x2 <- rbinom(1, 100, 0.6)
diffproportion.test(x1 = x1, x2 = x2, n1 = 120, n2 = 100)
diffproportion.test(x1 = 0.6, x2 = 0.65, n1 = 120, n2 = 100)
}
