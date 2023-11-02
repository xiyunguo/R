请认真研读以下三个函数的源代码：lm/predict.lm/print.lm*，前两个函数在R Console中直接输入函数名称，回车之后可显示；第三个函数源代码通过getAnywhere("print.lm")查看源代码。



基于上述三个函数，编写一个简易版本的线性回归扩展包simplin。要求达到以下效果：

(1) 本地安装好simplin扩展包之后，可通过library(simplin);x <- rnorm(100); y <- 20*x + 23 + rnorm(100); model <- lin_reg(x,y)实现一元线性回归模型的训练；

(2) 在R Console中输出model，其结果自定义；

(3) 将模型另存为my_model_file.rda文件；

(4) 在另外一台电脑上，本地安装好simplin扩展包之后，通过library(simplin); load("my_model_file.rda"); predict(model, 1:10)，能得到相应的预测预测结果。

用法：
library(simplin);
x <- rnorm(100); 
y <- 20*x + 23 + rnorm(100); 
model <- lin_reg(x,y);
model;
save(model,file="my_model_file.rda");
rm(model);
load("my_model_file.rda");
summary(model);
predict(model,1:10);