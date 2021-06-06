#Data Wrangling

library(tidyverse)

#get winners table by state, age, and personality type
castaways_select <- castaways_tb %>%
  filter(result == "Sole Survivor") %>%
  select(season, full_name, age, state, personality_type, result) %>%
  separate(full_name, sep=" ", 
           into = c("first_name", "last_name"), convert = TRUE) %>%
  arrange(desc(age))


