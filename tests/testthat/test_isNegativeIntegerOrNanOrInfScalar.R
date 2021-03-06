library(checkargs)
context("isNegativeIntegerOrNanOrInfScalar")

test_that("isNegativeIntegerOrNanOrInfScalar works for all arguments", {
  expect_identical(isNegativeIntegerOrNanOrInfScalar(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isNegativeIntegerOrNanOrInfScalar(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNanOrInfScalar(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNanOrInfScalar(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNanOrInfScalar(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNanOrInfScalar(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNanOrInfScalar(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNanOrInfScalar(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
