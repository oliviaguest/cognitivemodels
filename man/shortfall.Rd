% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model-shortfall.R
\name{shortfall}
\alias{shortfall}
\title{Shortfall Risky Choice Model}
\usage{
shortfall(formula, asp, data, fix = list(), choicerule, options)
}
\arguments{
\item{formula}{A \link{formula} defining the observations and stimuli in data. Stimuli are defined by outcomes and probabilities, separated by a pipe (\code{|}), like this: \code{mode ~ x1 + x2 + px + I(1-px) | y1 + y2 + py + I(1-py)}, where x1 and x2 are the first option's outcomes, px is the probability Pr(x1), y1 and y2 are the second option's outcomes, and py is the probability Pr(y1).}

\item{asp}{A \link{formula} defining the aspiration level in data, e.g., (\code{~aspirlev}), strings will be reformulated.}
}
\value{
An object of class R6 holding the model, it has free parameters. A model object \code{M} can be viewed with \code{M}, predictions can be made with \code{M$predict()} for choice predictions, and \code{M$predict("ev")} for the expected value of the optimal choice and \code{M$predict("value", 1:2)} for the expected value of all choices.
}
\description{
Fits the shortfall model, a cognitive model for risky choices. It trades off a risky option's expected value with a \eqn{\beta}-weighted measure of risk; risk being the chance of falling short of a \eqn{\delta}-weighted aspiration level (based on Andraszewicz, von Helversen, and Rieskamp). Model inputs are the risky options and the aspiration level. The value \eqn{v} of option \eqn{o}, with free parameters \eqn{\delta, \beta}, is
\deqn{v(o) = EV(o) - \beta R(o)}
\deqn{R(o) = \sum_i ( p_i ( max [ \delta asp_{o} - out_{o,i} , 0 ] ),}
where the parameter \eqn{\beta} represents risk aversion (\eqn{0 \le \beta \le 15}), the parameter \eqn{\delta} represents weight of the aspiration level (\eqn{0 \le \delta \le 1}).
}
\details{
shortfall(formula, data)

Risk-sensitive foraging means you have, for instance, four choices between the same two risky lotteries and after the four choices you need to have accumulated at least 12 points to get a reward. The optimal solution to this choice problem relies on dynamic programming. The function creates all possible future states given the possible remaining trials, and predicts the optimal choice polica or the expected value of chosing either option given a certain state and a certain time horizon.
}
\examples{
# None yet
}
\references{
{ Andraszewicz, S. (2014). Quantitative analysis of risky decision making in economic environments \(Doctoral dissertation, University of Basel\). doi:10.5451/unibas-006268585 }
}
\author{
Jana B. Jarecki, \email{jj@janajarecki.com}
}
