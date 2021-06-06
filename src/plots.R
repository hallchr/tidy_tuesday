#plotting

library(tidyverse)
library(forcats)

castaways_select$age <- as.factor(castaways_select$age)

ggplot(castaways_select) + 
geom_bar(aes(forcats::fct_infreq(age)))  +
  labs(title = NULL, subtitle=NULL, y="# Winners", x="Age") +
  theme_bw() + theme(axis.title.y = element_text(size=12), title = element_text(size = 18), axis.text.x = element_text(size = 12, angle = 65, vjust = 0.6),
                     axis.text.y = element_text(size = 12), legend.title = element_text(size=18), legend.text = element_text(size=15), legend.position = "none")