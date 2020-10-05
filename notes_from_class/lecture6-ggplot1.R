library(tidyverse)

mpg
View(mpg)

mtcars
dim(mtcars)

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, y = cyl))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(date = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size = cyl), shape = 1)
