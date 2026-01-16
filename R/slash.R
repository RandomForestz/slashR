#' Convert backslashes to forward slashes
#'
#' Converts Windows-style backslashes to forward slashes in file paths.
#' Use R's raw string syntax r"(...)" to paste paths directly from Windows.
#'
#' @param path Character string containing a file path with backslashes.
#'   Use raw string syntax: r"(C:\path\to\file)"
#' @return Character string with forward slashes
#' @export
#' @examples
#' \dontrun{
#' # Copy path from Windows, then paste with r"()" syntax:
#' dat <- read.csv(slash(r"(C:\Users\Name\data.csv)"))
#'
#' # Also works with regular escaped strings:
#' slash("C:\\Users\\Name\\data.csv")
#' }
slash <- function(path) {
  gsub("\\\\", "/", path)
}
