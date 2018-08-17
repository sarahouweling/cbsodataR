context("cbs_get_data")

test_that("key column is imported correctly", {
  skip_on_cran()
  id <- '80302ned'
  data <- cbs_get_data(id)
  expect_equal(class(data$Voertuigtypes), "character")
  expect_equal(class(data$Perioden), "character")
  expect_equal(class(data$TotaalKilometersInNederland_1), "numeric")
})
