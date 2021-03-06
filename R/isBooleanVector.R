#' Wrapper for the checkarg function, using specific parameter settings.
#'
#' This function can be used in 3 ways:\enumerate{
#'   \item Return TRUE or FALSE depending on whether the argument checks are
#'      passed. This is suitable e.g. for if statements that take further action
#'      if the argument does not pass the checks.\cr
#'   \item Throw an exception if the argument does not pass the checks. This is
#'      suitable e.g. when no further action needs to be taken other than
#'      throwing an exception if the argument does not pass the checks.\cr
#'   \item Same as (2) but by supplying a default value, a default can be assigned
#'      in a single statement, when the argument is NULL. The checks are still
#'      performed on the returned value, and an exception is thrown when not
#'      passed.\cr
#' }
#'
#' Actual call to checkarg: checkarg(argument, "B", default = default, stopIfNot = stopIfNot, nullAllowed = FALSE, n = NA, naAllowed = FALSE, message = message, argumentName = argumentName)
#'
#' @param argument See checkarg function.
#' @param default See checkarg function.
#' @param stopIfNot See checkarg function.
#' @param n See checkarg function.
#' @param message See checkarg function.
#' @param argumentName See checkarg function.
#'
#' @examples
#' isBooleanVector(FALSE)
#'    # returns TRUE (argument is valid)
#' isBooleanVector("X")
#'    # returns FALSE (argument is invalid)
#' #isBooleanVector("X", stopIfNot = TRUE)
#'    # throws exception with message defined by message and argumentName parameters
#' isBooleanVector(FALSE, default = TRUE)
#'    # returns FALSE (the argument, rather than the default, since it is not NULL)
#' #isBooleanVector("X", default = TRUE)
#'    # throws exception with message defined by message and argumentName parameters
#' isBooleanVector(NULL, default = TRUE)
#'    # returns TRUE (the default, rather than the argument, since it is NULL)
#'
#' @return See checkarg function.
#'
#' @export isBooleanVector
isBooleanVector <- function(argument, default = NULL, stopIfNot = FALSE, n = NA, message = NULL, argumentName = NULL) {
  
  checkarg(argument, "B", default = default, stopIfNot = stopIfNot, nullAllowed = FALSE, n = NA, naAllowed = FALSE, message = message, argumentName = argumentName)
}
