# some prefab examples:
# Example - decaying behaviour
event_time <- 0.333964
hazard_gamma <- 0.280632
alpha <- 1.71436
beta_one <- 1.641

f_integrand <- function(x) {
  x^(hazard_gamma - 1) * exp(alpha * beta_one * x)
}
f_alt <- function(x) {
  exp((hazard_gamma - 1) * log(x) + alpha * beta_one * x)
}
f_2 <- function(x) { ## "robustified" integrand
  sgn <- alpha/abs(alpha) * beta_one/abs(beta_one) ## alpha and beta_1 can be negative...
  lf <- log(abs(alpha)) + log(abs(beta_one)) -log(hazard_gamma) +  hazard_gamma * log(x) + alpha * beta_one * x
  ans <- sgn * exp(lf)
  return(ans)
}

par(mfrow = c(1, 2))
curve(f_integrand, from = 0, to = event_time)
curve(f_2, from = 0, to = event_time, col = 2, lwd = 2)

###
Q1 <- function(t){
  ans <- integrate(f_integrand, lower = 0, upper = t)
  return(ans)
}
Q2 <- function(t){
  ans <- integrate(f_alt, lower = 0, upper = t) 
  return(ans)
}
Q3 <- function(t){
  ans <- integrate(f_2, lower = 0, upper = t) 
  ans$value <- exp(hazard_gamma * log(t) + alpha*beta_one*t - log(hazard_gamma)) - ans$value
  return(ans)
}

Q1(event_time)
Q2(event_time)
Q3(event_time)

t1 <- function(t) Q1(t)$value
t2 <- function(t) Q2(t)$value
t3 <- function(t) Q3(t)$value

bench::mark(
  t1(event_time), 
  t2(event_time), 
  t3(event_time)
)
