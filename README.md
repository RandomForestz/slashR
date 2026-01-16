# slashR

Stop manually converting Windows backslashes to forward slashes in R.

## Installation
```r
# install.packages("remotes")
remotes::install_github("RandomForestz/slashR")
```

## Usage

Copy a Windows path and paste it using R's raw string syntax `r"(...)`:
```r
library(slashR)

# Paste path directly from Windows using r"()":
dat <- read.csv(slash(r"(S:\Projects\data\file.csv)"))

# The r"()" syntax preserves backslashes, then slash() converts them to /
```

## Why?

Windows uses backslashes in file paths. Thanks, Billy G but R prefers forward slashes. This package lets you paste Windows paths directly without manual find/replace, using R 4.0+'s raw string feature.

## Requirements

R version 4.0 or higher (for raw string support)

## License

MIT
