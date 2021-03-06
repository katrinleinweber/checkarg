library(checkargs)
context("isNaOrNonEmptyStringVector")

test_that("isNaOrNonEmptyStringVector works for all arguments", {
  expect_identical(isNaOrNonEmptyStringVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNaOrNonEmptyStringVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNaOrNonEmptyStringVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNaOrNonEmptyStringVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNaOrNonEmptyStringVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNaOrNonEmptyStringVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNaOrNonEmptyStringVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNaOrNonEmptyStringVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNaOrNonEmptyStringVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNaOrNonEmptyStringVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNaOrNonEmptyStringVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNaOrNonEmptyStringVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNaOrNonEmptyStringVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNaOrNonEmptyStringVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
})
