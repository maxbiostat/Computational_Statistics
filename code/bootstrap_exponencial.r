is_in <- function(x, l, u){
  below <- x >= l
  above <- x <= u
  result <- as.logical(below * above)
  return(result)
}

gera_dados <- function(n, theta){
  X <- rexp(n = n, rate = theta)
  return(X)  
}

computa_emv <- function(x){
  theta.chapeu <- 1/mean(x)
  return(theta.chapeu)
}

intervalos_emv <- function(x, alpha = 0.95){
  n <- length(x)
  S <- sum(x)
  theta.chapeu <- computa_emv(x)
  ## 
  ZchiL <- qchisq(p = (1-alpha)/2, df = 2*n)
  ZchiU <- qchisq(p = (1+alpha)/2, df = 2*n)
  ##
  Znorm <- qnorm(p = (1+alpha)/2)
  D <- Znorm*sqrt(theta.chapeu^2/n)
  ##
  resultado <- tibble::tibble(
    point = c(theta.chapeu, theta.chapeu),
    lwr = c(ZchiL/(2*S), theta.chapeu-D),
    upr = c(ZchiU/(2*S), theta.chapeu+D),
    method = c("exact", "asymptotic")
  )
  return(resultado)
}

NP_boot <- function(x, B, alpha = 0.95){
  n <- length(x)
  resample <- matrix(NA, nrow = B, ncol = n)
  for(i in 1:B){
    resample[i, ] <- x[sample(seq_along(x), n, replace = TRUE)]
  }
  thetas.chapeus <- apply(resample, 1, computa_emv)
  
  out <- list(
    lwr = quantile(thetas.chapeus, probs = (1-alpha)/2),
    mean = mean(thetas.chapeus),
    upr = quantile(thetas.chapeus, probs = (1+alpha)/2)
  )
  return(out)
}

P_boot <- function(x, B, alpha = 0.95){
  n <- length(x)
  theta_star <- computa_emv(x)
  resample <- matrix(NA, nrow = B, ncol = n)
  for(i in 1:B){
    resample[i, ] <- rexp(n = n, rate = theta_star)
  }
  thetas.chapeus <- apply(resample, 1, computa_emv)
  
  out <- list(
    lwr = quantile(thetas.chapeus, probs = (1-alpha)/2),
    mean = mean(thetas.chapeus),
    upr = quantile(thetas.chapeus, probs = (1+alpha)/2)
  )
  return(out)
}

intervalos_bootstrap <- function(x, B, alpha = 0.95){
  
  NP.res <- NP_boot(x = x, B = B, alpha = alpha)
  P.res <- P_boot(x = x, B = B, alpha = alpha)
  
  resultado <- tibble::tibble(
    point = c(NP.res$mean, P.res$mean),
    lwr = c(NP.res$lwr, P.res$lwr),
    upr = c(NP.res$upr, P.res$upr),
    method = c("non_parametric", "parametric")
  )
  return(resultado)
}

gera_e_estima <- function(n, theta, B, alpha = 0.95){
  dados <- gera_dados(n = n, theta = theta)
  est1 <- intervalos_emv(dados, alpha = alpha)
  est2 <- intervalos_bootstrap(x = dados, B = B, alpha = alpha)
  return(rbind(est1, est2))
}

#############
M <- 5E2 ## repetições
Nboot <- 1000 ## bootstrap reps
theta.vdd <- 2
Nsample <- 30

results <- do.call(rbind, 
                   lapply(1:M, function(i){
                     raw <- gera_e_estima(
                       n = Nsample,
                       theta = theta.vdd,
                       B = Nboot
                     )
                     raw$replicate <- i
                     return(raw)
                   }))

results$covers <- is_in(x = theta.vdd,
                        l = results$lwr,
                        u = results$upr)
results$width <- results$upr - results$lwr
  
aggregate((point-theta.vdd)~method, mean,
          data = results)
aggregate(point~method, var, data = results)
aggregate(covers~method, mean, data = results)

