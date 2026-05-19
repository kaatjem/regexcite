#' Split a string and convert to numeric
#'
#' @param string A character vector with, at most, one element.
#' @param pattern A
#' @inheritParams stringr::str_split
#'
#' @returns A character vector.
#' @export
#'
#' @examples
str_split_nums <- function(string, pattern){
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    as.numeric(stringr::str_split(string = string, pattern = pattern)[[1]])
  } else {
    character()
  }
}
