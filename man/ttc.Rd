% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ttc.R
\name{ttc}
\alias{ttc}
\title{Top-Trading-Cycles Algorithm with existing tenants}
\usage{
ttc(
  nStudents = ncol(s.prefs),
  nHouses = length(houses),
  s.prefs,
  houses,
  priority = NULL,
  seed = NULL
)
}
\arguments{
\item{nStudents}{integer indicating the number of students. Defaults to \code{ncol(s.prefs)}.}

\item{nHouses}{integer indicating the number of houses. Defaults to \code{length(houses)}.}

\item{s.prefs}{matrix of dimension \code{nHouses} x \code{nStudents} with column j containing student jth ranking over houses in decreasing order of preferences (i.e. most preferred first).}

\item{houses}{vector of length \code{nHouses} which represents the occupation of the houses. Entry in \code{k} contains \code{j} if student \code{j} is living in house \code{k} and \code{NA} if house \code{k} is vacant.}

\item{priority}{(Optional) vector of length \code{nStudents}. Gives the prioirity ordering of the students in the search for cycles (Do not confuse it with the preferences!), if nothing is specified a random ordering is chosen.}

\item{seed}{(Optional) integer setting the state for random number generation. Defaults to seed = NULL}
}
\value{
\code{ttc} returns a data frame of the matching of students (int) to houses (obj)  for the house allocation problem based on the Top-Trading-Cycles algorithm.
}
\description{
Implements an algorithm for the
\href{https://en.wikipedia.org/wiki/Top_trading_cycle}{house allocation problem} proposed by Abdulkadiroglu and Sonmez (1999) for a matching problem in which there are both vacant houses and existing tenants.
}
\examples{
## 1-a. Generate matrix of individuals' preference rankings over objects,
## a.k.a. Rank Order Lists (ROL).
s.prefs <- matrix(c(3,2,4,1,        # ROL of student 1
                   3,5,6, NA,
                   3,1, NA,NA,
                   2,5,6,4,
                   1,3,2,NA,
                   2,4,5,6), nrow = 4, ncol = 6, byrow = FALSE)

## 1-b. Generate vector of house occupation objects ('obj') and their owners ('ind')
houses <- 1:6

## 1-c. Find assignment based on TTC algorithm
ttc(s.prefs = s.prefs, houses = houses, nHouses = 6, priority = 1:6)

## 2-a.Compare the example in the paper Abdulkadiroglu et al. (1999)
## on page 246-248 (section 5.1 An Example):
## generate matrix of students' preference rankings over houses, a.k.a. Rank Order Lists (ROL)
s.prefs <- matrix(c(2,6,5,1,4,3,7,NA,
                 7,1,6,5,4,3,2,NA,
                 2,1,4,7,3,6,5,NA,
                 2,4,3,6,1,7,5,NA,
                 4,3,7,1,2,5,6,NA), byrow = FALSE, ncol= 5)

## 2-b. Generate house occupation, so student 1 lives in house 1, ..., student 4 lives in house 4
## and the other houses are vacant.
houses <- c(1,2,3,4,NA,NA,NA,NA)

## 2-c. Generate priority ordering
priority <- 1:5

## 2-d. Find assigment
ttc(s.prefs = s.prefs, houses = houses, priority = priority)
}
\references{
Abdulkadiroglu, A. and T. Sonmez (1999). House Allocation with Existing Tenants. \emph{Journal of Economic Theory},  88 (2): 233-260.

Shapley, L. and H. Scarf (1974). On Cores and Indivisibility. \emph{Journal of Mathematical Economics}, 1(1): 23-37.
}
\author{
Thilo Klein, Alexander Sauer
}
\keyword{algorithms}
