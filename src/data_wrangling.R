#Data Wrangling

library(tidyverse)

#get winners table by state, age, and personality type
castaways_select <- castaways_tb %>%
  filter(result == "Sole Survivor") %>%
  select(season, full_name, age, state, personality_type, result) %>%
  separate(full_name, sep=" ", 
           into = c("first_name", "last_name"), convert = TRUE) %>%
  arrange(desc(age))


## you want included in the long format
## it will leave the other variables as is
castaways_long <- castaways_select %>%
  pivot_longer(c(age, age_group, state, personality_type, result), 
               names_to = "variable", 
               values_to = "value")


map_dbl(castaways_select, mean)

