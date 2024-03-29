# matchingMarkets: Analysis of Stable Matchings in R



## Documentation

Package documentation is available at [matchingMarkets.org](https://matchingMarkets.org) and the vignette is available from the [CRAN page](https://cran.r-project.org/package=matchingMarkets). An application of the estimator in function `stabit` is in [Klein (2015)](https://ideas.repec.org/p/cam/camdae/1521.html).



## Installation

Get started by installing the [R software](https://www.r-project.org/) for statistical computing.

To get the latest *stable version* of the package from [CRAN](https://cran.r-project.org/package=matchingMarkets):

```R
install.packages("matchingMarkets")
library(matchingMarkets)
```

Under Linux, the dependency package `gmp` requires that you have GNU MP (> 4.1.4) installed: `$ sudo apt-get install libgmp-dev`. See https://gmplib.org.

To get the most recent *development version* from [GitHub](https://github.com/thiloklein/matchingMarkets):

```R
install.packages("devtools")
devtools::install_github("thiloklein/matchingMarkets")
library(matchingMarkets)
```
or from [R-Forge](https://r-forge.r-project.org/R/?group_id=1906):

```R
install.packages("matchingMarkets", repos="https://R-Forge.R-project.org")
library(matchingMarkets)
```

Java Note 1: If you get a Java error such as `JAVA_HOME cannot be determined from the Registry`, this can be resolved by either running `install.packages()` with the `INSTALL_opts = "--no-multiarch"` argument or by installing a Java version (i.e. 64-bit Java or 32-bit Java) that fits to the type of R version that you are using (i.e. 64-bit R or 32-bit R). This problem can easily effect Windows 7 users, since they might have installed a version of Java that is different than the version of R they are using. See [this post](https://www.r-statistics.com/2012/08/how-to-load-the-rjava-package-after-the-error-java_home-cannot-be-determined-from-the-registry/) and download the Java version from the [Oracle website](https://www.java.com/en/download/manual.jsp).

Java Note 2: If the installation of the dependent `rJava` package fails with [configuration failed for package ‘rJava’](https://stackoverflow.com/questions/3311940/r-rjava-package-install-failing), this can be fixed in Linux by `$ sudo apt-get install r-cran-rjava`.



## Functions

The `matchingMarkets` R package comes with two estimators:

* `stabit`: Implements a Bayes estimator that corrects for sample selection in matching markets when the selection process is a one-sided matching game (i.e. group formation).

* `stabit2`: Implements the Bayes estimator for a two-sided matching game (i.e. the [college admissions](https://en.wikipedia.org/wiki/Stable_marriage_problem#Similar_problems) and [stable marriage](https://en.wikipedia.org/wiki/Stable_marriage_problem) problems).

and algorithms that can be used to simulate matching data:

* `hri`: Constraint model for the hospital/residents problem. Finds *all* stable matchings in two-sided matching markets. Implemented for both the [stable marriage problem](https://en.wikipedia.org/wiki/Stable_marriage_problem) (one-to-one matching) and the [hospital/residents problem](https://en.wikipedia.org/wiki/Stable_marriage_problem#Similar_problems), also known as college admissions problem (many-to-one matching). 

* `hri2`: Roth-Peranson Algorithm for the [hospital/residents problem with couples](https://en.wikipedia.org/wiki/National_Resident_Matching_Program). Finds the resident-optimal stable matching (if one exists) in the two-sided matching market. 

* `iaa`: Immediate Acceptance Algorithm (a.k.a. Boston mechanism): First-preference-first algorithm used for school choice in many countries. And Gale-Shapley Deferred Acceptance Algorithm.

* `sri`: Constraint model for the stable roommates problem. Finds all stable matchings in the [roommates problem](https://en.wikipedia.org/wiki/Stable_roommates_problem) (one-sided matching market).

* `plp`: Partitioning Linear Programme. Finds the unique matching in the [roommates problem](https://en.wikipedia.org/wiki/Stable_roommates_problem) (one-sided matching market) with transferable utility.

* `rsd`: Random serial dictatorship mechanism.

* `ttc`: Top-Trading-Cycles Algorithm. Finds efficient matchings in the [housing market problem](https://en.wikipedia.org/wiki/Top_trading_cycle).

* `ttc2`: Top-Trading-Cycles Algorithm for a two sided matching problem. 

* `ttcc`: Top-Trading-Cycles and Chains Algorithm for the kidney exchange problem. 

Functions `hri` and `sri` are based on Patrick Prosser's n-ary [constraint encoding](https://arxiv.org/abs/1308.0183) model. They allow for *incomplete preference lists* (some agents find certain agents unacceptable) and *unbalanced instances* (unequal number of agents on both sides).  

