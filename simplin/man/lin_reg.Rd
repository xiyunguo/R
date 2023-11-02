\name{lin_reg}
\alias{lin_reg}
\title{Fitting unitary linear regression model}
\usage{
lin_reg(x, y)
}
\arguments{
\item{x, }{independent variable}

\item{y, }{dependent variable}
}
\value{
lin_reg model
}
\description{
lin_reg is used to fit unitary linear regression model models
}
\details{
The model is fitted by OLS in the following way:
\deqn{B =(X^TX)^{-1}X^TY}
}
