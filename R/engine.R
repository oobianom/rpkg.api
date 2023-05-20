#' RPKG.net variable holder
#'
#' Store for api key and output variables
#'
#' @export


engine <- function(API) {
  R6::R6Class("Engine",
    lock_class = TRUE,
    public = list(
      views = 0,
      likes = 0,
      comments = 0,
      initialize = function(APIKEY = API) {
        self$views <- self$views + 1
        private$API <- APIKEY
      },
      print = function(...) {
        invisible(self)
      }
    ),
    private = list(
      API = NULL,
      User = NULL,
      Name = NULL,
      IP = NULL
    )
  )
}
