# This is a script to help kids practice their multiplication tables
tables <- c(1:10)
repetitions = 5                                   

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
