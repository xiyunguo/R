\name{predict.lin_reg}
\alias{predict.lin_reg}
\title{Predict method for unary linear regression model fits}
\usage{
\method{predict}{lin_reg}(model, x)
}
\arguments{
\item{model, }{unary linear model}

\item{x, }{The independent variable to be predicted}
}
\value{
a numeric vector, the predicted values
}
\description{
Predicted values based on unary linear model object.
}
\details{
predict.lin_reg produces predicted values,
obtained by evaluating the regression function in the newdata x
}
