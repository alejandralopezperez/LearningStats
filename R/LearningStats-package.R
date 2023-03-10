#' Elemental Descriptive and Inferential Statistics (LearningStats)
#'
#' This package provides tools to teach students elemental Statistics. The main topics covered are Descriptive
#' Statistics, Probability models (discrete and continuous variables) and Statistical Inference
#' (confidence intervals and hypothesis tests).
#'
#' Main sections of LearningStats-package are: \cr
#' \tabular{ll}{
#'  \tab A.- Data \cr
#'  \tab B.- Descriptive Statistics \cr
#'  \tab C.- Probability models \cr
#'  \tab D.- Statistical Inference  \cr
#'  \tab E.- Regression \cr
#' }
#'
#' A.- Data \cr
#'
#' This section includes a function to read different file extensions and a dataset on health-related
#' behaviours with 18 variables. The main advantage of this tool is that with just one single function
#' most of the common file extensions can be imported into R.\cr
#'
#' \tabular{lll}{ \tab \code{\link{read.data}} \tab Data Input  \cr
#' \tab \code{\link{sicri2018}} \tab SICRI: information system on risk-taking behaviour }
#'
#' B.- Descriptive Statistics \cr
#'
#' The functions included in this section perform Descriptive Statistics by quantitatively describing
#' or summarizing different characteristics from a sample. Graphical tools are also available.
#'
#' \tabular{lll}{ \tab \code{\link{freq.pol}} \tab Plot a Cumulative Frequency Polygon \cr
#' \tab \code{\link{freq.table}} \tab Frequency Table \cr
#' \tab \code{\link{Histogram}} \tab Plot a Histogram \cr }
#'
#' C.- Probability models \cr
#'
#' In this section probability models for discrete and continuous variables are provided.\cr
#'
#' C.1-Discrete variables:\cr
#'
#' The user is allowed to display, with several options, the probability mass and/or distribution function for the following discrete distributions:
#' Binomial, Discrete Uniform, Hypergeometric, Negative Binomial and Poisson.
#'
#' \tabular{lll}{ \tab \code{\link{plotBinom}} \tab Probability Mass and/or Distribution Function Representations associated with a \cr
#' \tab \tab Binomial Distribution \cr
#' \tab \code{\link{plotDUnif}} \tab Probability Mass and/or Distribution Function Representations associated with a \cr
#' \tab \tab Discrete Uniform Distribution \cr
#' \tab \code{\link{plotHyper}} \tab Probability Mass and/or Distribution Function Representations associated with a \cr
#' \tab \tab Hypergeometric Distribution \cr
#' \tab \code{\link{plotNegBinom}} \tab Probability Mass and/or Distribution Function Representations associated with a \cr
#' \tab \tab Negative Binomial Distribution \cr
#' \tab \code{\link{plotPois}} \tab Probability Mass and/or Distribution Function Representations associated with a \cr
#' \tab \tab Poisson Distribution }
#'
#' C.2-Continuous variables:\cr
#'
#' The user is allowed to display, with several options, the density, distribution and/or quantile functions for the following continuous distributions:
#' Beta, Chi-squared, Exponential, F-Snedecor, Gamma, Normal, T-Student and Uniform.
#'
#' \tabular{lll}{ \tab \code{\link{plotBeta}} \tab Density Function, Distribution Function and/or \cr
#' \tab \tab Quantile Function Representations associated with a Beta Distribution \cr
#' \tab \code{\link{plotChi}} \tab Density Function, Distribution Function and/or \cr
#' \tab \tab Quantile Function Representations associated with a Chi-squared Distribution \cr
#' \tab \code{\link{plotExp}} \tab Density Function, Distribution Function and/or \cr
#' \tab \tab Quantile Function Representations associated with a Exponential Distribution \cr
#' \tab \code{\link{plotFS}} \tab Density Function, Distribution Function and/or \cr
#' \tab \tab Quantile Function Representations associated with a F-Snedecor Distribution \cr
#' \tab \code{\link{plotGamma}} \tab Density Function, Distribution Function and/or \cr
#' \tab \tab Quantile Function Representations associated with a Gamma Distribution \cr
#' \tab \code{\link{plotNorm}} \tab Density Function, Distribution Function and/or \cr
#' \tab \tab Quantile Function Representations associated with a Normal Distribution \cr
#' \tab \code{\link{plotTS}} \tab Density Function, Distribution Function and/or \cr
#' \tab \tab Quantile Function Representations associated with a T-Student Distribution \cr
#' \tab \code{\link{plotUnif}} \tab Density Function, Distribution Function and/or \cr
#' \tab \tab Quantile Function Representations associated with a Uniform Distribution}
#'
#' C.3-Illustrations: \cr
#'
#' Also in this section three common approximations between different distributions are illustrated. The approximations
#' considered are: the Normal approximation to Binomial, the Normal approximation to Poisson and the
#' Poisson approximation to Binomial.
#'
#' \tabular{lll}{ \tab \code{\link{AproxBinomNorm}} \tab Illustration of the Normal Approximation to Binomial \cr
#' \tab \code{\link{AproxPoisNorm}} \tab Illustration of the Normal Approximation to Poisson \cr
#' \tab \code{\link{AproxBinomPois}} \tab Illustration of the Poisson Approximation to Binomial \cr}
#'
#' D.- Statistical Inference \cr
#'
#' This section includes functions to perform Statistical Inference (confidence intervals and hypothesis testing)
#' with one or two populations and also for categorical data. \cr
#'
#' D.1-Confidence intervals: \cr
#'
#' The functions included here provide pointwise and confidence interval estimation for different population
#' parameters. One or two populations are supported.
#'
#' One population: \cr
#'
#' \tabular{lll}{ \tab \code{\link{Mean.CI}} \tab Confidence Interval for the Mean of a Normal Population \cr
#' \tab \code{\link{proportion.CI}} \tab Large Sample Confidence Interval for a Population Proportion \cr
#' \tab \code{\link{variance.CI}} \tab Confidence Interval for the Variance and the Standard \cr
#' \tab \tab Deviation of a Normal Population}
#'
#' Two populations: \cr
#'
#' \tabular{lll}{ \tab \code{\link{diffmean.CI}} \tab Confidence Interval for the Difference \cr
#' \tab \tab between the Means of Two Normal Populations \cr
#' \tab \code{\link{diffproportion.CI}} \tab Large Sample Confidence Interval for the \cr
#' \tab \tab Difference between Two Population Proportions \cr
#' \tab \code{\link{diffvariance.CI}} \tab Confidence Interval for the Ratio between the \cr
#' \tab \tab Variances of Two Normal Populations }
#'
#' D.2-Hypothesis tests: \cr
#'
#' This sections allows to compute hypothesis tests for different population parameters (mean, variance and
#' proportion) in one or two populations.
#' The scenarios covered here are those mentioned in the Confidence Interval section as well as a Chi-squared
#' independence test.
#'
#' One population: \cr
#'
#' \tabular{lll}{ \tab \code{\link{Mean.test}} \tab One Sample Mean Test of a Normal Population \cr
#' \tab \code{\link{proportion.test}} \tab Large Sample Test for a Population Proportion \cr
#' \tab \code{\link{variance.test}} \tab One Sample Variance Test of a Normal Population}
#'
#' Two populations: \cr
#'
#' \tabular{lll}{ \tab \code{\link{diffmean.test}} \tab Two Sample Mean Test of Normal Populations \cr
#' \tab \code{\link{diffproportion.test}} \tab Two Sample Proportion Test \cr
#' \tab \code{\link{diffvariance.test}} \tab Two Sample Variance Test of Normal Populations }
#'
#' Categorical data: \cr
#'
#' \tabular{lll}{ \tab \code{\link{indepchisq.test}} \tab Chi-squared Independence Test for Categorical Data}
#'
#' E.- Regression  \cr
#'
#' This section includes a function to describe the relationship between two continuous variables through
#' a simple linear regression model, providing the R-squared coefficient.
#'
#' \tabular{lll}{ \tab \code{\link{plotReg}} \tab Representation of a Linear Regression Model }
#'
#' @name LearningStats-package
#' @docType package
#' @import graphics
#' @import stats
#' @importFrom grDevices adjustcolor
#' @importFrom utils ls.str globalVariables
NULL
