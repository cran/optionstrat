% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optionstrat.R
\name{prob.btwn}
\alias{prob.btwn}
\title{Probability Between}
\usage{
prob.btwn(spot, lower, upper, asd = 0, dsd = 0, dte = 0, mean = 0,
  p, quantile = FALSE, tradedays = 262)
}
\arguments{
\item{spot}{Current price of the underlying asset}

\item{lower}{Lower price of the range}

\item{upper}{Upper price of the range}

\item{asd}{Annualized standard deviation of the underlying returns}

\item{dsd}{Daily standard deviation of the underlying returns (Annual vol/sqrt(256)), used as an alternative to the asd parameter in conjuction with the dte parameter}

\item{dte}{Days until expiration, designated time frame}

\item{mean}{The average daily price movement, default = 0}

\item{p}{Designated probability}

\item{quantile}{Logical. If True, calculates the probable price range}

\item{tradedays}{Number of trade days in a year, default = 262}
}
\value{
Returns a probability (if quantile = FALSE), Returns a data.frame (if quantile = TRUE)
}
\description{
Calculates the probability of the underlying asset value falling between two prices in a designated time frame, given the daily standard devaiation of the underlying returns.
}
\details{
This function has two separate possible operations:
1. Calculates the probability of the underlying asset value falling between two prices in a designated time frame, given the daily standard devaiation of the underlying returns.
2. Calculates the probable price range, given a set probability
}
\examples{
prob.btwn(spot = 100, lower = 90, upper = 110, mean = 0, dsd = 0.01, dte = 45)
prob.btwn(spot = 100, mean = 0, dsd = 0.01, dte = 45, p = 0.75, quantile = TRUE)
}
