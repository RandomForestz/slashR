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

# Convert a path string
fix_path("C:\\Users\\j\\Documents\\data.csv")
#> [1] "C:/Users/j/Documents/data.csv"

# Or work directly with clipboard
# 1. Copy a Windows path (e.g., from File Explorer)
# 2. Run:
fix_path_clip()
# 3. Paste the corrected path
```

## Why?

Windows uses backslashes in file paths, but R wants those forward slashes..... This package eliminates the tedious manual conversion that Billy Gates has given us!

## License

MIT
