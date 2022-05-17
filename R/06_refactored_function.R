#' This is a function to help kids practice their multiplication tables
#'
#' @param tables numeric: The multiplication tables you'd like to practice
#' @param repetitions numeric: The number multiplication questions you'd like
#' to be tested on
#'
#' @return NULL
#' @export
#'
#' @examples
#' practice_multiplications(tables = 8, repetitions = 3)
practice_multiplications <- function(tables = c(1:10),
                                     repetitions = 12) {
  
  tictoc::tic()
  out <- vector(mode = "logical", length = repetitions)
  
  counter <- 1
  while (counter <= repetitions) {
    out[counter] <- practice_multiplication(vn = tables)
    counter <- counter + 1
  }
  
  tictoc::toc()
  display_stats(out = out, repetitions = repetitions)
}

#' Helper to practice multiplications
#'
#' @param vn numeric: vector of numbers to be used for multiplications
#'
#' @return
#' @export
#'
#' @examples
practice_multiplication <- function(vn) {
  
  # Pick two numbers
  n1 <- sample(vn, size = 1)
  n2 <- sample(0:10, size = 1)
  
  # Create question
  question <- paste(n1, " x ", n2)
  
  # Ask for response
  resp <- readline(prompt = paste(question, " = "))
  
  # Check response
  success <- as.numeric(resp) == n1*n2
  display_encouragement_message(success)
  invisible(success)
}

#' Print encouragement message on screen
#'
#' @param success logical: TRUE if the response is correct
#'
#' @return
#' @export
#'
#' @examples
#' display_encouragement_message(success = TRUE)
display_encouragement_message <- function(success) {
  if (success) {
    message(sample(c("Bravo!",
                     "Super!",
                     "Tu es le meilleur!",
                     "",
                     "Champion du monde!!",
                     "Yoooouhoooou!!"), 1))
  } else {
    message(sample(c("Encore un petit effort!",
                     "Tu y es presque :-)",
                     "Aie aie aie...",
                     ""), 1))
  }
}

#' Display basic stats
#'
#' @param out 
#' @param repetitions 
#'
#' @return
#' @export
#'
#' @examples
display_stats <- function(out, repetitions) {
  perf <- sum(out) / repetitions
  
  return(cat(round(perf * 100, 0), "% de bonnes reponses!!"))
}