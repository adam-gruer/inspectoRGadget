context("test-gogo_gadget_arms.R")

test_that("gogo_gadget_arms returns an environments", {
  expect_is(gogo_gadget_arms("dplyr"), "environment")

})
