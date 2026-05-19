str_split_nums <- function(string, pattern){
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    as.integer(stringr::str_split(string = string, pattern = pattern)[[1]])
  } else {
    character()
  }
}
