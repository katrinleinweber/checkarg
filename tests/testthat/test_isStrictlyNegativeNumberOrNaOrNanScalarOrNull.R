library(checkargs)
context("isStrictlyNegativeNumberOrNaOrNanScalarOrNull")

test_that("isStrictlyNegativeNumberOrNaOrNanScalarOrNull works for all arguments", {
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrNanScalarOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
