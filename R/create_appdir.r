#' Create an appDir for shiny::runApp and rsconnect::deployApp
#'
#' Create a directory in tempdir() where the folder containing ui.r, server.r
#' etc. from an installed package is copied and the data is saved.
#' This directory, with its content, will be deployd to or ran by shiny.
#'
#' @param app_data The data to be saved in the directory, to be used by the app
#' @param webpage_title The title of the app
#' @param git_hash Current git sha1 hash
#' @param github_repo Current github repository
#' @param package Package name containing a shiny app in <app_folder>
#' @param app_folder The folder name where the shiny app is located.
#'
#' @return The created directory
#' @export
#'
create_appdir <- function(app_data = NULL,
                          webpage_title = NULL,
                          package = NULL,
                          app_folder = "app",
                          git_hash = NULL,
                          github_repo = NULL) {
  # Name the directory
  tmpshinydir <- paste0(tempdir(), "/", "shiny")
  # Delete old content in directory
  unlink(tmpshinydir, recursive = TRUE, force = TRUE)
  # Create main directory
  dir.create(tmpshinydir)
  # Copy the installed version of the portal package to the directory
  if (is.null(package)) {
      dir.create(paste0(tmpshinydir, "/", app_folder))
  } else {
      file.copy(system.file(app_folder, package = package), tmpshinydir, recursive = TRUE)
  }
  # Create data folder
  dir.create(paste0(tmpshinydir, "/", app_folder, "/", "data"))
  # Save the data to a .RData file
  save(app_data,
       webpage_title,
       git_hash,
       github_repo,
       file = paste0(tmpshinydir, "/", app_folder, "/", "data/data.RData"))
  # Return the name of the main directory
  return(paste0(tmpshinydir, "/", app_folder))
}
