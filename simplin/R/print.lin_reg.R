#' print.lin_reg
#'
#' @param model
#'
#' @return Intercept and Slope
#' @export

print.lin_reg <- function(model) {
  model_value <- model$value
  cat("郭喜云编写的一元线性回归模型")
  cat("\n截距: ", model_value[1])
  cat("\t系数: ", model_value[2], "\n")
}
