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
                                     repetitions = 5) {                                 
  counter <- 1
  while (counter <= repetitions) {
    # Pick two numbers
    n1 <- sample(tables, size = 1)
    n2 <- sample(0:10, size = 1)
    
    # Create question
    question <- paste(n1, " x ", n2)
    
    # Ask for repsonse
    resp <- readline(prompt = paste(question, " = "))
    
    # Check response
    success <- as.numeric(resp) == n1*n2
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
    
    counter <- counter + 1
  }
}
