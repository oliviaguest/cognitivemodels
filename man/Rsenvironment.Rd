% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rsenvironment-class.R
\name{rsenvironment}
\alias{rsenvironment}
\title{Class for risk-sensitive foraging environments}
\usage{
rsenvironment(
  budget,
  ...,
  n.trials,
  initial.state,
  terminal.fitness = function(state, budget) {     as.numeric(state >= budget) }
)
}
\arguments{
\item{budget}{Numeric, minimum requirement.}

\item{...}{Numeric matrix (n x 2) with probabilities in column one and outcomes in columnn 2.}

\item{n.trials}{Numeric, number of trials.}

\item{initial.state}{Numeric, starting state.}

\item{terminal.fitness}{Function that specifies the terminal reward (what you get at the end of n.trials), defaults to "get zero if below budget and 1 otherwise". See details.}
}
\description{
Class for risk-sensitive foraging environments
}
\details{
The argument \code{terminal.fitness} must be a function with exactly two arguments \code{budget} and \code{state}, that returns for each budget and state the terminal reward.
}
