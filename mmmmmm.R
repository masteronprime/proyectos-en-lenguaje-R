library(ggplot2)
library(dplyr)
library(ISLR)
data(Carseats)
str(Carseats)

# Estudiemos el set de datos
str(diamonds)
head(diamonds)
data(iris)
str(iris)

#listado para  
ggplot(data = iris, aes(x = Sepal.Length,y = Sepal.Width)) +
 geom_point(col="purple",shape="triangle",size=3,alpha=1/10) + geom_line(aes(color=Species,linetype= Species))
 

# Color como atributo
ggplot(diamonds, aes(x = carat, y = price)) + 
  geom_point(col="red1")

# Relleno como aesthetic
ggplot(diamonds, aes(x = clarity, fill=cut)) + 
  geom_bar() 
  #coord_flip()

# Relleno como atributo
ggplot(diamonds, aes(x = clarity)) + 
  geom_bar(fill="skyblue4")

#histograma
ggplot(data=Carseats,aes(x=Sales, fill = ShelveLoc)) +
  geom_histogram(bins=40)
#diagrama de densidad 
ggplot(data=Carseats,aes(x=Sales, fill = Urban)) +
  geom_density()
