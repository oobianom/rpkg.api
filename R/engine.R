#' RPKG.net variable holder
#'
#' Store for api key and output variables
#'
#' @export




engine <- function() {
  R6::R6Class('Engine',
              public = list(
                views = 0,
                likes = 0,
                comments = 0
              ),
              private = list(
                API = NULL,
                User = NULL,
                Name = NULL,
                IP = NULL
              ))
}
