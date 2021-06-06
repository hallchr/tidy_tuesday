# importing data from tidytuesday github
library(httr)
library(dplyr)
library(dbplyr)
library(tidyverse)
library(haven)
library(magick)
library(tesseract)
library("googledrive")
library(readr)
library(here)
library(readxl)
library(googlesheets4)
library(jsonlite)
library(RSQLite)
library(ProjectTemplate)
library(rvest)

#download directly from github
castaways <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-06-01/castaways.csv')
castaways_tb <- as.tibble(castaways)

challenges <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-06-01/challenges.csv')
challenges_tb <- as.tibble(challenges)

jury_votes <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-06-01/jury_votes.csv')
jury_votes_tb <- as.tibble(jury_votes)

summary <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-06-01/summary.csv')
summary_tb <- as.tibble(summary)

viewers <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-06-01/viewers.csv')
viewers_tb <- as.tibble(viewers)




#save raw data
write.csv(castaways_tb, file = here::here("data", "raw_data", "castaways.csv"))
write.csv(challenges_tb, file = here::here("data", "raw_data", "challenges.csv"))
write.csv(summary_tb, file = here::here("data", "raw_data", "summary.csv"))
write.csv(viewers_tb, file = here::here("data", "raw_data", "viewers.csv"))


