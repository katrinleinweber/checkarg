library(checkargs)
context("isPositiveIntegerOrInfVector")

test_that("isPositiveIntegerOrInfVector works for all arguments", {
  expect_identical(isPositiveIntegerOrInfVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrInfVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrInfVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrInfVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrInfVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrInfVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrInfVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrInfVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isPositiveIntegerOrInfVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrInfVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrInfVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrInfVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrInfVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrInfVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrInfVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrInfVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrInfVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrInfVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrInfVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrInfVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrInfVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrInfVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
