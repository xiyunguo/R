#' summary.lin_reg
#'
#' @param model
#'
#' @return summary of model
#' @export

summary.lin_reg <- function(model) {
  model_info <- model$info
  model_value <- model$value
  cat("\n=======================================")
  cat("\n    郭喜云编写的一元线性回归模型")
  cat("\n=======================================")
  cat("\nIntercept: ", model_value[1])
  cat("\nSlope: ", model_value[2])
  cat("\nFitted model: y=",  model_value[2], "*x+", model_value[1], sep = "")
  cat("\nModel created @", as.character(model_info$created_time), sep = "")
  cat("\n---------------------------------------")
  cat("\ncoefficient of determination:", model_info$R_squared)
  cat("\nF-statistic:",  model_info$F_statistic)
  cat("\np-value:", model_info$p_value)
  cat("\n=======================================\n\n")
  invisible(model_info)
}
