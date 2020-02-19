
library(ggplot2)
library(corrplot)
library(plyr)
library(tidyverse)
library(data.table)

mtcars
tail(mtcars)
summary(mtcars)
tail(mtcars)
levels(mtcars$vs)
factor(mtcars)
labels(mtcars)

labels(mtcars$vs) 
labels (mtcars$am)
factor(mtcars$am)

mtcars$vs <- factor(mtcars$vs)
mtcars$am <- factor(mtcars$am)

summary(mtcars$am)
summary(mtcars$vs)

class(mtcars$vs)
levels(mtcars$vs)
 
### Exploratory data analysis
dim(mtcars)
str(mtcars)

### univariate analysis
summary(mtcars$mpg)
summary(mtcars$cyl)
summary(mtcars$disp)
summary(mtcars$hp)
summary(mtcars$drat)
summary(mtcars$wt)
summary(mtcars$qsec)
summary(mtcars$vs)
summary(mtcars$am)
summary(mtcars$gear)
summary(mtcars$carb)
summary(mtcars)

ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=cyl)) + geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=disp)) + geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=hp)) + geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=drat)) + geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=wt)) + geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=qsec)) + geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=gear)) + geom_histogram(binwidth = 0.5)
ggplot(mtcars,aes(x=carb)) + geom_histogram(binwidth = 0.5)

### scatterplot analysis
### independent vs dependent variable
plot(mtcars)
ggplot(mtcars,aes(x=cyl, y=mpg)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=disp, y=mpg)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=hp, y=mpg)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=drat, y=mpg)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=wt, y=mpg)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=qsec, y=mpg)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=gear, y=mpg)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=carb, y=mpg)) + geom_point(shape = 1)+ geom_smooth(method = lm)

### Independent vs independent variable
ggplot(mtcars,aes(x=cyl, y=disp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=hp, y=disp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=drat, y=disp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=wt, y=disp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=qsec, y=disp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=gear, y=disp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=carb, y=disp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=cyl, y=hp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=drat, y=hp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=wt, y=hp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=qsec, y=hp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=gear, y=hp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=carb, y=hp)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=cyl, y=drat)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=wt, y=drat)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=qsec, y=drat)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=gear, y=drat)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=carb, y=drat)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=cyl, y=wt)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=qsec, y=wt)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=gear, y=wt)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=carb, y=wt)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=cyl, y=qsec)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=gear, y=qsec)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=carb, y=qsec)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=cyl, y=gear)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=carb, y=gear)) + geom_point(shape = 1)+ geom_smooth(method = lm)
ggplot(mtcars,aes(x=cyl, y=carb)) + geom_point(shape = 1)+ geom_smooth(method = lm)

###dfw <- as.data.frame(mtcars)
data(mtcars)
sort(cor(mtcars)[1,])


cor(mtcars, use="complete.obs", method="pearson")

summary(mtcars)
mtcarscor <- cor(mtcars, use = "everything", method = "pearson")
corrplot(mtcarscor, method = "circle")

## Prediction analysis
train <- mtcars[1:22,]
test <-mtcars[23:32,]

## Linear Regression
fitcyl <- lm(train$mpg~train$cyl)
fitdisp <- lm(train$mpg~train$disp)
fithp <- lm(train$mpg~train$hp)
fitdrat <- lm(train$mpg~train$drat)
fitwt <- lm(train$mpg~train$wt)
fitqsec <- lm(train$mpg~train$qsec)
fitgear <-lm(train$mpg~train$gear)
fitcarb <-lm(train$mpg~train$carb)
fitam <- lm(train$mpg~train$am)
fitvs <- lm(train$mpg~train$vs)

## Multiple regression
So


