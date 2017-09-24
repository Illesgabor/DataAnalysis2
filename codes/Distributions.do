*clear environment
clear
*set the seed
set seed 123
*sample size
set obs 10000 




*binomial
*set the seed
*probability=0.7, sample=10000
gen bernoulli=rbinomial(1,0.7) 
hist bernoulli,xtitle("Bernoulli") ytitle("")  color("midblue") freq


*bernoulli
*sample=1000, success=20, probability=0.4

gen rbinomial=rbinomial(20,.4)
hist rbinomial, xtitle("Binomial") ytitle("")  freq color("midblue") 


*uniform
*sample=1000, a=1, b=3
gen runif=runiform(1, 3)
hist runif, xtitle("Uniform")  freq color("midblue") 

*noromal
*sample=1000, mu=4, sigma=2

gen rnormal=rnormal(4,2)
hist rnormal,  ytitle("") freq xtitle("Normal") color("midblue")

*lognoromal
#Take the exponential of the randomly generated normal above 

generate lognormal = exp(rnormal)
hist lognormal  if lognormal <500 ,ytitle("") freq xtitle("LogNormal") color("midblue")


