## (Partial) solutions to the exercises here: http://www.stats.ox.ac.uk/~rebeschi/teaching/AdvSim/18/exercises/sheet1.pdf

## Exercise 1
a <- 2
lambda <- 1/4
n <- 100000

invcdf_Y <- function(u, lambda) -log(1-u)/lambda
invcdf_X <- function(u, lambda, a){
  FYa <- 1- exp(-lambda*a)
  x <- invcdf_Y( (1-FYa)*u + FYa , lambda = lambda)
  return(x)  
}
Us <- runif(n = n)

Xs.inversion <- invcdf_X(u = Us, lambda = lambda, a = a)

## Exercise 3

# rejection <- function(lambda, a)
# { ## direct rejection
#   M <- exp(lambda*a)
#   counter <- 0
#   Y <- rexp(1, rate = lambda)
#   while(Y < a){
#     counter <- counter + 1
#     Y <- rexp(1, rate = lambda)
#   }
#   return(list(x = Y, counter = counter))
# }
rejection <- function(lambda, a){
  ## indirect rejection via density ratios
  counter <- 0
  M <- exp(-lambda*a)
  U <- runif(1)
  Y <- rexp(1, rate = lambda)
  while(U > ifelse(Y>=a, 1, 0) * 1/M){ ## rejection
    counter <- counter + 1
    U <- runif(1)
    Y <- rexp(1, rate = lambda)
  }
  return(list(x = Y, counter = counter))
}


N <- 10000
samps <- lapply(1:N, function(i) rejection(lambda = lambda, a = a))
Iters <- unlist(lapply(samps, function(s) s$counter))
tt <- table(Iters)
tt[1]/N
exp(-lambda*a)

Xs.rejection <- unlist(lapply(samps, function(s) s$x))
mean(Xs.rejection)
mean(Xs.inversion)
1/lambda * (a*lambda + 1) ## analytical expectation