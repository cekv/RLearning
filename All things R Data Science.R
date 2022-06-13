library(tidyverse)
head(mtcars)
dim(mtcars)
filter(mtcars, mpg > 20)

mtcars %>%  ggplot(aes(x = mpg)) + geom_histogram (bins=10)

mtcars %>%  ggplot(aes(x = mpg)) + geom_density (col="red")


mtcars %>%  ggplot(aes(x = mpg, y= wt)) + geom_point ( col= "green", size=10)

mtcars %>%  ggplot(aes(x = mpg, y= wt)) + geom_smooth()



mtcars %>%  ggplot(aes(x = mpg, y= wt)) + geom_point () + geom_smooth() + theme_bw()

