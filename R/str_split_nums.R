#' Split a string and convert to numeric
#'
#' @param string A character vector with, at most, one element.
#' @param pattern A string to split on.
#'
#' @returns A character vector.
#' @export
#'
#' @examples
#' x <- "1,2,3"
#' str_split_nums(x, pattern = ",")
str_split_nums <- function(string, pattern){
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    as.numeric(stringr::str_split(string = string, pattern = pattern)[[1]])
  } else {
    character()
  }
}
