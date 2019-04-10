#Project Euler, problem 7
#Source: https://projecteuler.net/problem=7
#What is the 10 001st prime number?

#This program takes each integer >= 3 and tests if any of the primes in 
#the prime vector divide the integer. If so, the loop is broken and we move on '
#to the next integer, and a boolean value (breakBool) indicates that 
#the loop was broken and the number is composite, not prime. If the loop is never 
#broken, none of the primes in the primeVector divide the number, so the loop 
#is not broken and breakBool remains false. This indicates that the number isn't
#divisible by any primes less than itself, so therefore the number is prime. The 
#number is then appended to the end of the primeVector. 

primeVector <- c(2) 
number <- 3L 

while (length(primeVector) < 10001){
  breakBool <- FALSE
  for (prime in primeVector){
    if (number %% prime == 0){
      breakBool <- TRUE
      break
    }
  }
  
  if (breakBool == FALSE ){
    primeVector <- c(primeVector, number)
  }
  number <- number + 1
}

"The 10,001st prime is:"
primeVector[10001]