#' Fix Windows backslashes to forward slashes, literally saving seconds of your day!
#'
#' Converts backslashes in a file path string to forward slashes.
#'
#' @param path Character string containing a file path with backslashes
#' @return Character string with backslashes converted to forward slashes
#' @export
#' @examples
#' fix_path("C:\\Users\\j\\Documents\\data.csv")
#' # Returns: "C:/Users/j/Documents/data.csv"
fix_path <- function(path) {
  gsub("\\\\", "/", path)
}

#' Fix path from clipboard
#'
#'
#' @return Invisibly returns the fixed path string
#' @export
#' @examples
#' \dontrun{
#' # Copy a Windows path like C:\Users\j\Documents
#' # Then run:
#' fix_path_clip()
#' # The corrected path is now on your clipboard
#' }
fix_path_clip <- function() {
  path <- clipr::read_clip()
  fixed <- gsub("\\\\", "/", path)
  clipr::write_clip(fixed)
  message("Fixed path copied to clipboard:\n", fixed)
  invisible(fixed)
}
