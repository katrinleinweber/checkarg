library(checkargs)
context("isStrictlyPositiveNumberOrInfVector")

test_that("isStrictlyPositiveNumberOrInfVector works for all arguments", {
  expect_identical(isStrictlyPositiveNumberOrInfVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveNumberOrInfVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isStrictlyPositiveNumberOrInfVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveNumberOrInfVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveNumberOrInfVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveNumberOrInfVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveNumberOrInfVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveNumberOrInfVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveNumberOrInfVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveNumberOrInfVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveNumberOrInfVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
