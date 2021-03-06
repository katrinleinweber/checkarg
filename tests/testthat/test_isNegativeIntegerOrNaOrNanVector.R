library(checkargs)
context("isNegativeIntegerOrNaOrNanVector")

test_that("isNegativeIntegerOrNaOrNanVector works for all arguments", {
  expect_identical(isNegativeIntegerOrNaOrNanVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isNegativeIntegerOrNaOrNanVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNaOrNanVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNaOrNanVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeIntegerOrNaOrNanVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeIntegerOrNaOrNanVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeIntegerOrNaOrNanVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
