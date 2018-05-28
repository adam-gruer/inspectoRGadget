#' Gadgetize all the package things
#'
#'
#'
#' @param package character vector length 1, the package to gadgetize , must be intalled
#'
#' @return returns nothing but adds an environment to your seach path called gadget_arms
#' all the exported functions and objects of `package` can now be called by typing `gogo_{functions/object_name}`
#' @export
#'
#' @examples
#'
#' gogo_gadget_arms("dplyr")
#'
#' gogo_filter(beaver1, activ == 1)
#'


gogo_gadget_arms <-  function(package) {


  #getNamespace returns the returns the environment representing the name space name. The namespace is loaded if necessary.

  ns <- getNamespace(package)

  # vector of all names (i.e. functions and objects) exported ny the namespace


  # funcs <- ls(paste0("package:",package))
  names <- getNamespaceExports(ns)

  # Create new environment gadget_arms
  # assign each function to gadget environment
  # attach gadget environment to search path
  # credit: Hadley Wickhaam https://github.com/adam-gruer/inspectoRGadget/issues/2
  # todo if gadget_arms is already in search path copy it %>% detach it %>% add to it %>%  reattach it

  gadget_arms  <- new.env()

  purrr::walk(names ,  function(.n){
    assign(paste0("gogo_",.n),
           getExportedValue(ns, .n),
           envir = gadget_arms)
  })
  attach(gadget_arms)
}
