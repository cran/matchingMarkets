% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stabsim2.R
\name{stabsim2}
\alias{stabsim2}
\title{Simulated data for college admissions problem}
\usage{
stabsim2(
  m,
  nStudents,
  nColleges = length(nSlots),
  nSlots,
  colleges,
  students,
  outcome,
  selection,
  binary = FALSE,
  seed = 123,
  verbose = TRUE
)
}
\arguments{
\item{m}{integer indicating the number of markets to be simulated.}

\item{nStudents}{integer indicating the number of students per market.}

\item{nColleges}{integer indicating the number of colleges per market.}

\item{nSlots}{vector of length \code{nColleges} indicating the number of places at each college, i.e. 
the college's quota.}

\item{colleges}{character vector of variable names for college characteristics. These variables carry the same value for any college.}

\item{students}{character vector of variable names for student characteristics. These variables carry the same value for any student.}

\item{outcome}{formula for match outcomes.}

\item{selection}{formula for match valuations.}

\item{binary}{logical: if \code{TRUE} outcome variable is binary; if \code{FALSE} outcome variable is continuous.}

\item{seed}{integer setting the state for random number generation. Defaults to \code{set.seed(123)}.}

\item{verbose}{.}
}
\value{
\code{stabsim2} returns a list with the following items.
\item{OUT}{}
\item{SEL}{}
\item{SELc}{}
\item{SELs}{}
}
\description{
Simulate data for two-sided matching markets. In the simulation for the 
Sorensen (2007) model with one selection equation, an equal sharing rule of 
\eqn{\lambda = 0.5} is used.
}
\examples{

## Simulate two-sided matching data for 2 markets (m=2) with 10 students
## (nStudents=10) per market and 3 colleges (nColleges=3) with quotas of
## 2, 3, and 5 students, respectively.

xdata <- stabsim2(m=2, nStudents=10, nSlots=c(2,3,5), verbose=FALSE,
  colleges = "c1", students = "s1",
  outcome = ~ c1:s1 + eta + nu,
  selection = ~ -1 + c1:s1 + eta
)
head(xdata$OUT)
head(xdata$SEL)

}
\author{
Thilo Klein
}
\keyword{generate}
