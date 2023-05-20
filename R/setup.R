#' RPKG.net variable holder
#'
#' Store for api key and output variables
#'
#' @export


setup <- function(API) {
  registerAPI <- engine(API)
  R6::R6Class("SetupKit",
              inherit = registerAPI,
              public = list(
                initialize = function() {
                  print("...starting")
                },
                print = function(...) {
                  invisible(self)
                },
                getApi = function(){
                  print(private$API)
                }

              ),
              private = list(
                temp = NULL
              )
  )

}
