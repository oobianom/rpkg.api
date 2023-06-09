# R6 - Create a storage holder for key parameters
paramStoreHub <- R6::R6Class("Engine",
  lock_class = TRUE,
  public = list(
    views = 0,
    likes = 0,
    comments = 0,
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
