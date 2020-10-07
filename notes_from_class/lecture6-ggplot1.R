library(tidyverse)

mpg
View(mpg)

mtcars
dim(mtcars)

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, y = cyl))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

# ggplot(data = mpg) +
#   geom_point(mapping = aes(x = displ, y = hwy) color = class, size = cyl), shape = 1) +
#   geom_smooth(mapping = aes(x = displ, y = hwy), method = "lm") + 
#   facet_wrap(~ year, nrow = 1)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class, size = cyl), shape = 1) +
  geom_smooth(mapping = aes(color = class, linetype = class)) + 
  theme_bw()

