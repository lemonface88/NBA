#### Preamble ####
# Purpose: Downloads and saves the data from sportsdataio
# Author: Harrison
# Date: Today
# Contact: harri.huang@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(rvest)
library(stringr)
library(dplyr)

#### Download data ####

# Data for maxey during 2024-2024 split
maxey_url_2023 <- read_html("https://www.espn.com/nba/player/splits/_/id/4431678/tyrese-maxey")

maxey_tables <- 
  maxey_url_2023 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
maxey_left <- maxey_tables[[1]]
maxey_right <- maxey_tables[[2]]

maxey_data_c <-
cbind(maxey_left, maxey_right)


view(maxey_data_c)

# Data for maxey during 2024-2024 split

#### Save data ####


write_csv(maxey_data_c, "data/raw_data/raw_maxey_data.csv")


         
