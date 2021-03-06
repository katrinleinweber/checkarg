library(checkargs)
context("isNumberOrNaOrNanOrInfVectorOrNull")

test_that("isNumberOrNaOrNanOrInfVectorOrNull works for all arguments", {
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNumberOrNaOrNanOrInfVectorOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNumberOrNaOrNanOrInfVectorOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNumberOrNaOrNanOrInfVectorOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNumberOrNaOrNanOrInfVectorOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNumberOrNaOrNanOrInfVectorOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNumberOrNaOrNanOrInfVectorOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNumberOrNaOrNanOrInfVectorOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNumberOrNaOrNanOrInfVectorOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNumberOrNaOrNanOrInfVectorOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
