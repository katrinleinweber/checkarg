library(checkargs)
context("isNonZeroNumberScalar")

test_that("isNonZeroNumberScalar works for all arguments", {
  expect_identical(isNonZeroNumberScalar(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberScalar(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberScalar(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberScalar(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberScalar(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberScalar(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isNonZeroNumberScalar(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroNumberScalar(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberScalar(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberScalar(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberScalar(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroNumberScalar(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberScalar(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
