
#clear environment 
rm(list=ls())
#set the sead
set.seed(123)

#bernoulli
#sample=1000, probability=0.7
bernoulliDist <- rbinom(1000,1,.7)
hist(bernoulliDist, main = "Bernoully Distribution",col=c("blue"))


#binomial distribution.
#sample=1000, success=40, probability=0.4

binomDist <- rbinom(1000,40,.4)
hist(binomDist  ,breaks=100, main = "Binomial Distribution",col=c("blue"))


#uniform.

#a=1, b=3 sample size= 10000
unif=runif(10000, min=1, max=3) 
hist(unif ,breaks=50, main = "Uniform Distribution",col=c("blue"))



#normal.
#sample size=10000, mu=4, sigma=2
NormalDist <- rnorm(10000, 4, 2)


# Plot the histogram for this sample.
hist(NormalDist ,breaks=50, main = "Normal Distribution",col=c("blue"))

#exponential.
#Take the exponential of the randomly generated normal above 
LogNormalDist=exp(NormalDist)
hist(LogNormalDist,breaks=8000, main = "LogNormal Distribution",col=c("blue"),xlim = c(0,40))

