#' RPKG.net variable holder
#'
#' Store for api key and output variables
#'
#' @export


engine <- function(APIk) {
  R6::R6Class("Engine",
    public = list(
      views = 0,
      likes = 0,
      comments = 0,
      initialize = function(API = APIk) {
        self$views = self$views + 1
        private$API = API
      },
      print = function(...) {
        print(...)
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
