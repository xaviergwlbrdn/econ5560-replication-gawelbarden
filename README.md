# econ5560-replication-gawelbarden
# Everglades Replication Project

## Paper replicated

Stainback, G. A., Lai, J. H., Pienaar, E. F., Adams, D. C., Wiederholt, R., & Vorseth, C. (2020). Public preferences for ecological indicators used in Everglades restoration. PLOS ONE, 15(6), e0234051. doi:10.1371/journal.pone.0234051
## Data

The data file is `LCM_4classes_data.dta`.

The data came from: https://doi.org/10.17605/OSF.IO/9AG7Z

Downloaded on: November 1, 2026.

## How to run

1. Install R and Quarto.
2. Install the required R packages:

```r
install.packages(c(
  "tidyverse", "haven", "knitr", "psych",
  "gt", "survival", "mlogit", "gmnl"
))
```


## AI Usage

AI was used for debugging to get this to work on github. 

## Known limitation

The automated pipeline reproduces the descriptive statistics, NEP correlation table, and conditional-logit regression (Table 6).

The mixed random-parameter logit replication (Section 2.3) was attempted but was not included in the automated pipeline because it did not complete reliably on my computer. The mixed-logit code is retained in the repository for reference. And could not get latent class model to work for our paper but included what we had in the regression file. 
