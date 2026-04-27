#' FizzBuzz game
#'
#' Vector is created for n terms in the game
#' If divisible by 3 its replaced with fizz
#' If divisible by 5 replaced with buzz
#' If divisible by both then replace with fizz buzz.
#'
#' @param n A positive finite integer.
#' @return A character vector containing the FizzBuzz output from 1 to n.
#' @examples
#' FizzBuzz(15)
#' @export
FizzBuzz <- function(n)
{
  if (n <= 0)
  {
    stop("n must be greater than zero")
  }

  if (is.infinite(n))
  {
    stop("n must be finite")
  }

  result <- character(n)

  for (i in 1:n)
  {
    if (i %% 3 == 0 & i %% 5 == 0)
    {
      result[i] <- "Fizz Buzz"
    }
    else if (i %% 3 == 0)
    {
      result[i] <- "Fizz"
    }
    else if (i %% 5 == 0)
    {
      result[i] <- "Buzz"
    }
    else
    {
      result[i] <- as.character(i)
    }
  }

  return(result)
}
