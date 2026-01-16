#' Convert backslashes to forward slashes from clipboard
#'
#' Reads a file path from the clipboard, converts backslashes to forward slashes,
#' removes surrounding quotes, and returns the fixed path.
#'
#' @return Character string with forward slashes
#' @export
#' @examples
#' \dontrun{
#' # Copy path from File Explorer, then:
#' dat <- read.csv(slash())
#' }
slash <- function() {
  path <- clipr::read_clip()
  # Remove surrounding quotes
  fixed <- gsub('^\"|\"$', '', path)
  # Convert backslashes to forward slashes
  fixed <- gsub("\\\\", "/", fixed)
  message("Fixed: ", fixed)
  return(fixed)
}
