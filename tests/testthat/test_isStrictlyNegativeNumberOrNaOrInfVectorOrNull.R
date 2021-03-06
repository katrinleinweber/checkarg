library(checkargs)
context("isStrictlyNegativeNumberOrNaOrInfVectorOrNull")

test_that("isStrictlyNegativeNumberOrNaOrInfVectorOrNull works for all arguments", {
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfVectorOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
