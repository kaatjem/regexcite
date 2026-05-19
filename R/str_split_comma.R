#' Split a string on commas
#'
#' @param string A character vector with, at most, one element.
#'
#' @returns A character vector.
#' @export
#'
#' @examples
#' x <- "alfa,bravo,charlie,delta"
#' str_split_comma(x)
str_split_comma <- function(string) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = ",")[[1]]
  } else {
    character()
  }
}
