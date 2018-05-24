#' Gadgetize all the package things
#'
#'
#'
#' @param package character vector length 1, the package to gadgetize , must be intalled
#' will be added to searchPath
#'
#' @return returns nothing but adds A LOT of gadgetized objects to your .GlobalEnv
#' @export
#'
#' @examples
#' gogo_gadget_arms("dplyr")
#'
#' gogo.filter(beaver1, activ == 1)


gogo_gadget_arms <-  function(package) {


  # todo <-  would like to try this # ls( asNamespace("dplyr") ) instead
  # of require(package, character.only = TRUE)
  # but it returns all objects and functions not just exported ones

  require(package, character.only = TRUE)

  # list of all exported objects in package
  # package needs to be in the search path

  funcs <- ls(paste0("package:",package))

  # assign each function to a new function in the  .GlobalEnv environment
  # todo <- add these to the search path rather than the .GlobalEnv


  purrr::walk(funcs ,  function(.f){
    assign(paste0("gogo_",.f),
           get(.f),
           envir = .GlobalEnv)
  })
}
