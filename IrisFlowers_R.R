#Install Packages

install.packages("ggplot2")
library("ggplot2")

install.packages("here")
library("here")

library("tidyverse")
install.packages("tidyverse")

#Insert Data

library (datasets)
data(iris)

iris <- datasets::iris

#view data 

View(iris)

# View the first and last 4 line of the data set 

head(iris,4)
tail(iris,4)

#summary of sepal data

summary(iris)
summary(iris$Sepal.Length)

#check if there  is any missing data

sum(is.na(iris))

#Use Skim to summarize data

library("skimr")
install.packages("skimr")

skim(iris)

#Group data by species then perform skim

iris%>%
  dplyr::group_by(Species) %>%
  skim()

#Summarize data by the mean petal length of each species

iris %>%
  group_by(Species)%>%
  drop_na()%>%
  summarize(Petal.Length=mean(Petal.Length))

##############################
# Visualization in R 
#############################

# Panel plots

plot(iris)
plot(iris, col = "blue")

#scatter plot
plot(iris$Sepal.Width, iris$Sepal.Length)

plot(iris$Sepal.Width, iris$Sepal.Length, col = "blue")

plot(iris$Sepal.Width, iris$Sepal.length, col = iris$Species, xlab = "Sepal witdh", ylab = "Sepal length")

#Histogram 
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, col = "blue" ,xlab="Sepal Width")

#Bar diagram of the speal width per species

ggplot(data=iris)+
  geom_bar(mapping=aes(x=Sepal.Length,fill=Species))

