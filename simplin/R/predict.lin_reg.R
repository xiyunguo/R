#' predict.lin_reg
#'
#' @param model
#' @param x
#'
#' @return
#' @export

predict.lin_reg <- function(model, x) {
  model_value <- model$value
  return (model_value[2] * x + model_value[1])
}
