% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/freq.pol.R
\name{freq.pol}
\alias{freq.pol}
\title{Plot a Cumulative Frequency Polygon}
\usage{
freq.pol(x, freq = FALSE, col = "black", lwd = 2, main = "autom",
  xlab = "", ylab = "autoy", bar = TRUE, fill = TRUE,
  col.fill = "pink")
}
\arguments{
\item{x}{a numeric vector containing the sample to compute the cumulative polygon.}

\item{freq}{logical value; if TRUE, the cumulative polygon uses absolute frequencies; if FALSE, relative frequencies are used.}

\item{col}{colour to be used in the polygon line; default to black.}

\item{lwd}{a single numeric value corresponding with the width to be used in the polygon line; default to 2}

\item{main}{main title; by default  to "Polygon of cumulative absolute frequencies" or "Polygon of cumulative relative frequencies" depending on the value of the argument freq, TRUE or FALSE respectively.}

\item{xlab}{x-axis label; by default to empty .}

\item{ylab}{y-axis label; by default to "Cumulative absolute frequencies" or "Cumulative relative frequencies" depending on the value of the argument freq, TRUE or FALSE respectively.}

\item{bar}{logical value; if TRUE (default), bars are plotted underneath the polygon line.}

\item{fill}{logical value; if TRUE bars are filled with colour set in col.fill (if not given pink is chosen); FALSE (default) unless col.fill is given.}

\item{col.fill}{colour to be used to fill the bars; if not given and fill=TRUE, set to pink.}
}
\value{
A list containing the following components:
\item{ni}{a numeric vector containing the absolute frequencies.}
\item{fi}{a numeric vector containing the relative frequencies.}
\item{Ni}{a numeric vector containing the absolute cumulative frequencies.}
\item{Fi}{a numeric vector containing the relative cumulative frequencies.}
\item{tab}{the frequency table.}
Independently on the user saving those values, the function provides the frequency table on the console.
}
\description{
The function \code{freq.pol} computes a cumulative frequency polygon of a given sample.
}
\details{
The sample must be numeric and coming from a continuous variable.

The procedure used to define the intervals for the frequency table and the bars (if plotted) is the same as used for the histogram performed in this package (see ?Histogram).
}
\examples{
x=rnorm(10)
freq.pol(x)

freq.pol(x,freq=TRUE,fill=TRUE,col.fill="yellow")

}
