% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iaa.R
\name{iaa}
\alias{iaa}
\title{Immediate Acceptance Algorithm (a.k.a. Boston mechanism) for two-sided matching markets}
\usage{
iaa(
  nStudents = ncol(s.prefs),
  nColleges = ncol(c.prefs),
  nSlots = rep(1, nColleges),
  s.prefs = NULL,
  c.prefs = NULL,
  acceptance = "immediate",
  short_match = TRUE,
  seed = NULL
)
}
\arguments{
\item{nStudents}{integer indicating the number of students (in the college admissions problem)
or men (in the stable marriage problem) in the market. Defaults to \code{ncol(s.prefs)}.}

\item{nColleges}{integer indicating the number of colleges (in the college admissions problem)
or women (in the stable marriage problem) in the market. Defaults to \code{ncol(c.prefs)}.}

\item{nSlots}{vector of length \code{nColleges} indicating the number of places (i.e.
quota) of each college. Defaults to \code{rep(1,nColleges)} for the marriage problem.}

\item{s.prefs}{matrix of dimension \code{nColleges} \code{x} \code{nStudents} with the \code{j}th
column containing student \code{j}'s ranking over colleges in decreasing order of
preference (i.e. most preferred first).}

\item{c.prefs}{matrix of dimension \code{nStudents} \code{x} \code{nColleges} with the \code{i}th
column containing college \code{i}'s ranking over students in decreasing order of
preference (i.e. most preferred first).}

\item{acceptance}{if \code{acceptance="deferred"} returns the solution found by the student-proposing Gale-Shapley deferred acceptance algorithm; if \code{acceptance="immediate"} (the default) returns the solution found by the Boston mechanism.}

\item{short_match}{(Optional)  If \code{FALSE} then in the returned matching, free capacities will be indicated with 0 entries. If \code{TRUE}, free capacities will not be reported in the returned matching but an additonal data.frame is returned that contains free capacities. Defaults to \code{TRUE}.}

\item{seed}{(Optional) integer setting the state for random number generation.}
}
\value{
\code{iaa} returns a list with the following elements.
\item{s.prefs}{student-side preference matrix.}
\item{c.prefs}{college-side preference matrix.}
\item{iterations}{number of interations required to find the stable matching.}
\item{matchings}{edgelist of matches}
\item{singles}{identifier of single (or unmatched) students/men.}
}
\description{
Finds the optimal assignment of students to colleges in the
\href{https://en.wikipedia.org/wiki/Hospital_resident}{college admissions} problem
based on the Boston mechanism. The algorithmen is also applicable to the stable marriage problem. The option \code{acceptance="deferred"} instead uses the Gale-Shapley
(1962) Deferred Acceptance Algorithm with student offer. The function works with either
given or randomly generated preferences.
}
\section{Minimum required arguments}{

\code{iaa} requires the following combination of arguments, subject to the matching problem.
\describe{
\item{\code{nStudents, nColleges}}{Marriage problem with random preferences.}
\item{\code{s.prefs, c.prefs}}{Marriage problem with given preferences.}
\item{\code{nStudents, nSlots}}{College admissions problem with random preferences.}
\item{\code{s.prefs, c.prefs, nSlots}}{College admissions problem with given preferences.}
}
}

\examples{
## --------------------------------
## --- College admission problem

s.prefs <- matrix(c(1,2,3,
                    1,2,3,
                    1,2,3,
                    2,1,3,
                    2,1,3),
                  byrow = FALSE, ncol = 5, nrow = 3)
c.prefs <- matrix(c(1,4,2,3,5,
                    5,2,3,4,1,
                    1,2,3,4,5),
                  byrow = FALSE, ncol = 3, nrow = 5)
nSlots <- c(2,2,1)

## Boston mechanism
 iaa(s.prefs = s.prefs, c.prefs = c.prefs, nSlots = nSlots)$matchings

## Gale-Shapley algorithm
 iaa(s.prefs = s.prefs, c.prefs = c.prefs, nSlots = nSlots, acceptance="deferred")$matchings

## Same results for the Gale-Shapley algorithm with hri2() function (but different format)
 set.seed(123)
 iaa(nStudents=7, nSlots=c(3,3), acceptance="deferred")$matchings
 set.seed(123)
 hri2(nStudents=7, nSlots=c(3,3))$matchings
}
\references{
Gale, D. and Shapley, L.S. (1962). College admissions and the stability
of marriage. \emph{The American Mathematical Monthly}, 69(1):9--15.

Kojima, F. and M.U. Unver (2014). The "Boston" school-choice mechanism. \emph{Economic Theory}, 55(3): 515--544.
}
\author{
Thilo Klein
}
\keyword{algorithms}
