#What is the 95% VAR of a N(0,1)
qnorm(0.95, 0, 1)
#what about 95% VAR of a N(0,3)
qnorm(0.95, 0 , 3)

#calculate the VAR of an empirical distribution
## data at https://d37djvu3ytnwxt.cloudfront.net/assets/courseware/v1/bd266fcad9f7881ee9f5369ee87274b2/asset-v1:DelftX+TW3421x+3T2016+type@asset+block/losses.txt

#Expected shortfall calculations from lecture three, week three
a <- (0.02^2) 
b <- (0.98 * 0.02 * 2) 
c <- (0.98^2)
1 - 0.0004 - 0.975

(20 * 0.0004 + 11 * 0.0246) / 0.025


#backtesting
##measure right tails first, is VaR too small?
###pbinom is the cumulative distribution, subtract by one for right tail

#likelihood of at least 12 exceptions in 900 days with alpha of 99%
## note the k - 1, i.e. 12 - 1 = 11 
1 - pbinom(11, 900, 0.01, TRUE)
### 12 exceptions is ~20% likely, not able to reject at 95% 

#likelihood of at least 20 exceptions in 900 days
1 - pbinom(19, 900, 0.01, TRUE)
###20 exceptions is less than 1% likely, reject at 95% (and 99%)

##measure left tails next, is VaR too large?
### do not subtract by one

#likelihood of no more than 5 exceptions
pbinom(4, 900, 0.01, TRUE)
### 5 is just more than 5% likely, reject at 95%

#likelihood of no more than 3 exceptions
pbinom(2, 900, 0.01)
### 3 is less than 1% likely

#what if we were measuring the 95% alpha?
pbinom(4, 900, 0.05, TRUE)
### likelihood of only 5 exceptions for .95 VAR is very small

#Quiz
##underestimating if 14 exceptions?
1 - pbinom(13, 1000, 0.01, TRUE)
#overestimate if 6?
pbinom(5, 1000, 0.01, TRUE)
#what if only 800 days?
1 - pbinom(13, 800, 0.01, TRUE)
