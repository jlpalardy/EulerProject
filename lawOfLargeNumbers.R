#Law of Large Numbers Test

#According to the Law of Large Numbers, as the sample size taken from a population
#increases, the sample mean approaches the expected value (the theoretical mean)
#of the population.

#In our test, we're using random numbers from a normal distribution with a mean = 0'
#and standard deviation = 1. We will count how many of those random numbers in a 
#sample of size N are between -1 and 1 (within 1 standard deviation of the mean),
#and dividing that count by sample size N. We will repeat with larger and larger N.
#We should see that, as N increases, the number percentage of random numbers in each
#sample within one standard deviation of the mean should approach 68% (the theoretical
#percentage of values within 1 standard deviation of the mean in a normal distribution.)

#Set the initial sample size to N = 10
N <- 10

while (N <= 1E8){
  total <- 0
  randomVect <- rnorm(N)
  for(i in randomVect){
    if (i <= 1 & i >= -1) { #if random number in correct range, increment total
      total <- total + 1 
    }
  }
  
  percent <- (total / N) * 100 #Find % of random numbers within 1 standard deviation
  print("N: ")
  print(N)
  print("percent within 1 standard deviation:")
  print(percent)
  N <- 10 * N #Increase N by a factor of 10
}
#I stopped at 1E7 simply because after this point, the program gets much slower.
#EDIT: By making better use of vectorized operations, I sped the code up considerably. 
#Still, I wouldn't advise going above N = 1E8