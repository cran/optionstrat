% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optionstrat.R
\name{callgreek}
\alias{callgreek}
\title{Call Option Greek}
\usage{
callgreek(greek = c("delta", "gamma", "theta", "vega", "rho", "premium"),
  s, x, sigma, t, r, d = 0)
}
\arguments{
\item{greek}{String value, desired option greek to return}

\item{s}{Spot price of the underlying asset}

\item{x}{Strike price of the option}

\item{sigma}{Implied volatility of the underlying asset price, defined as the annualized standard deviation of the asset returns}

\item{t}{Time to maturity in years}

\item{r}{Annual continuously-compounded risk-free rate, use the function r.cont}

\item{d}{Annual continuously-compounded dividend yield, use the function r.cont}
}
\value{
Returns the desired option greek, including premium
}
\description{
Computes the selected option greek, including premium
}
\examples{
callgreek("delta", 100, 100, 0.20, (45/365), 0.02, 0.02)
callgreek("gamma", 100, 100, 0.20, (45/365), 0.02, 0.02)
}
