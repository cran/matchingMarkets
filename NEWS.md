
# matchingMarkets 1.0-4

Please note that only the most significant changes are reported here.
A full ChangeLog is available on [GitHub](https://github.com/thiloklein/matchingMarkets).

This is a minor update

# matchingMarkets 1.0-1

This is a minor update

* Added data generating function for exploded logit in `xlogit.data`.

# matchingMarkets 1.0-0

This is a major update

* Finalised estimators in `stabit2` function, as well as algorithms in `hri` and `hri2` for two-sided matching markets.

# matchingMarkets 0.3-6

This is a minor update

* Added top-trading-cycle functions `ttc2` and `ttcc`; random serial dictatorship `rsd`; and a function to check the stability of a given matching `stabchk`.

# matchingMarkets 0.3-5

This is a minor update

* Added R wrapper for Roth-Peranson Algorithm in function `hri2`.

# matchingMarkets 0.3-3

This is a minor update

* Implemented multi-core parrallel processing for estimators in function `stabit2`, which can be specified using the `nCores` argument.
* Updated immediate acceptance algorithm `iaa` and top-trading-cycles `ttc` functions. Thanks to Sándor Sóvágó at Tinbergen Institute and Kevin Breuer at University of Cologne for the reports.

# matchingMarkets 0.3-1

This is a major update

* Replaced stable matching algorithms with constraint programming model implemented for hospital/residents problem `hri` and stable roommates `sri` with incomplete lists.
* Added `plot` and `summary` methods for estimators.
* Allowed for thinning in `stabit2` function.

# matchingMarkets 0.2-2 

This is a minor update

* Allowed for two selection equations in `stabit2` function for two-sided matching markets. 


# matchingMarkets 0.2-1

This is a major update

* Added `stabit2` function for two-sided matching markets. 


# matchingMarkets 0.1-6

This is a major update

* Added package vignette. 


# matchingMarkets 0.1-5

This is a minor update.

* Fixed `daa` function for college admissions problems when number of students exceeds number of colleges. Thanks to Jan Tilly at University of Pennsylvania for the report.

# matchingMarkets 0.1-1

Initial commit.

