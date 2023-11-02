#' lin_reg
#'
#' @param x
#' @param y
#'
#' @return
#' @export

lin_reg <- function(x, y) {
  # 计算斜率和截距
  X <- cbind(rep(1, length(x)), x)
  b_hat <- solve(t(X) %*% X)%*%t(X)%*% y
  Intercept <- b_hat[[1]]
  Slope <- b_hat[[2]]

  # 计算估计值和相关的参数
  y_hat <- Slope * x + Intercept
  SST <- sum((y - mean(y))^2)
  SSR <- sum((y_hat - mean(y))^2)
  SSE <- sum((y_hat - y)^2)
  R_squared <- 1-SSE/SST
  F_statistic <- SSR/(SSE/(length(x) - 2))
  p_value <- pf(F_statistic, 1, length(x) - 2, lower.tail = FALSE)

  # 赋值
  model_info <- list(SST = SST,
                     SSR = SSR,
                     SSE = SSE,
                     R_squared = R_squared,
                     F_statistic = F_statistic,
                     p_value = p_value,
                     created_time = Sys.time())
  model_value <- c(Intercept = Intercept, Slope = Slope)

  model <- list(value = model_value, info = model_info)
  attr(model, "class") <- "lin_reg"
  attr(model, "info") <- model_info
  attr(model, "value") <- model_value
  return (model)
}
