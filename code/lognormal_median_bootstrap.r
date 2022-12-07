N <- 100
Mu <- -0.5
Sigma <- 2
true.Median <- exp(Mu)
#####
X <- rlnorm(n = N, meanlog = Mu, sdlog = Sigma)

### Assignment: assess the normal approximation
  
###

hist(X, probability = TRUE)
m.hat <- median(X)

Nboot <- 200
npboot.ests <- rep(NA, Nboot)

for(i in 1:Nboot){
  Xrep <- sample(X, size = N, replace = TRUE)
  npboot.ests[i] <- median(Xrep)
}

hist(npboot.ests, probability = TRUE, col ='lightblue2',
     main = "Bootstrap estimates of the median")
abline(v = m.hat, lwd = 3, lty = 2, col = "red")
abline(v = true.Median, lwd = 3, lty = 3)
legend(x = "topright",
       legend = c("Point estimate", "True Median"),
       col = c("red", "black"), lwd = 3,
       lty = c(2, 3), bty = 'n')





