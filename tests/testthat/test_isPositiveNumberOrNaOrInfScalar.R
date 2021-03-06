library(checkargs)
context("isPositiveNumberOrNaOrInfScalar")

test_that("isPositiveNumberOrNaOrInfScalar works for all arguments", {
  expect_identical(isPositiveNumberOrNaOrInfScalar(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaOrInfScalar("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isPositiveNumberOrNaOrInfScalar(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveNumberOrNaOrInfScalar(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveNumberOrNaOrInfScalar(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveNumberOrNaOrInfScalar(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaOrInfScalar(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveNumberOrNaOrInfScalar(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveNumberOrNaOrInfScalar(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveNumberOrNaOrInfScalar("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaOrInfScalar(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
