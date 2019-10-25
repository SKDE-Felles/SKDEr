context("Create tmpdir")

test_that("The temporary directory can be created", {
  expect_is(create_appdir(), "character")
  expect_error(suppressWarnings(create_appdir(package = "SKDEr")))
  expect_is(create_appdir(app_data = mtcars), "character")
  expect_warning(create_appdir(app_folder = NULL))
  expect_is(suppressWarnings(create_appdir(app_folder = NULL)), "character")
})
