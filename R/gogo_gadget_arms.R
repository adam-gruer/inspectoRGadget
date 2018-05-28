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

  exp_names <- getNamespaceExports(ns)

  # append "gogo_" to the names
  gogo_names <- paste0("gogo_",exp_names)


  # Create new environment gadget_arms
  # assign each function to gadget environment
  # attach gadget environment to search path
  # credit: Hadley Wickhaam https://github.com/adam-gruer/inspectoRGadget/issues/2
  # todo if gadget_arms is already in search path copy it %>% detach it %>% add to it %>%  reattach it

    new_env <- "gadget_arms"

    if (any(search() == new_env)) {
            gadget_arms <- detach(new_env, character.only = TRUE)

          } else {
            gadget_arms  <- new.env()
          }

    importIntoEnv(impenv = gadget_arms,
                  impnames = gogo_names ,
                  expenv = ns,
                  expnames = exp_names)

  # purrr::walk(names ,  function(.n){
  #   assign(paste0("gogo_",.n),
  #          getExportedValue(ns, .n),
  #          envir = gadget_arms)
  # })
  attach(gadget_arms)
}
