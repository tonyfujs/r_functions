echo <- function(x) {
  print(x)
}

test_that("echo works", {
  expect_true(is.character(echo("test")))
  expect_true(is.numeric(echo(1)))
  expect_equal(echo("test"), "test")
  expect_equal(echo(1), 1)
})