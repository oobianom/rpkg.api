#' RPKG.net setup
#'
#' Store for api key and output variables
#'
#' @param API api key
#'
#' @export


setup <- function(API) {
  R6::R6Class("SetupKit",
    inherit = engine(),
    public = list(
      initialize = function(APIKEY = API) {
        self$views <- self$views + 1
        private$API <- APIKEY
        print("...starting")
      },
      print = function(...) {
        invisible(self)
      },
      getApi = function() {
        print(private$API)
      }
    ),
    private = list(
      temp = NULL
    )
  )
}
