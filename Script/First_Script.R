# my first github synced script :D 
library(renv)
# restore the versions of the packages used to develop this project
renv::restore()
# 1. pull in github to get up to date version
library(tidyverse)
# install.packages("tidyverse")

x <- c(1,2,3,4,5)
y <- c(4,2,0,6,9)
data<- data.frame(x,y)
fig01 <- data %>% ggplot(aes(x=x,y=y))+
  geom_point(col="darkblue",size=5,shape="o")+
  geom_smooth(method="lm", col="yellow",fill="orange")
fig01
ggsave("./Figures/fig01.png", plot=fig01,width=1920, height=1068, units="px")

  