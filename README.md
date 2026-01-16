# slashR

Stop manually converting Windows backslashes to forward slashes in R.

## Installation
```r
# install.packages("remotes")
remotes::install_github("RandomForestz/slashR")
```

## Usage
```r
library(slashR)

# 1. Copy a Windows path from File Explorer
# 2. Run:
dat <- read.csv(slash())
```

That's it. No manual editing, no find/replace.

NEW: value "slash_history" appears, a history of breadcrumbs to find your way home.

## License

MIT
