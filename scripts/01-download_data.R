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

# Data for maxey during 2022-2023 split
maxey_url_2022 <- read_html("https://www.espn.com/nba/player/splits/_/id/4431678/type/nba/year/2023/category/perGame")

maxey_tables <- 
  maxey_url_2022 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
maxey_left <- maxey_tables[[1]]
maxey_right <- maxey_tables[[2]]

maxey_data_2022 <-
  cbind(maxey_left, maxey_right)

view(maxey_data_2022)
# Data for maxey during 2023-2024 split

maxey_url_2023 <- read_html("https://www.espn.com/nba/player/splits/_/id/4431678/tyrese-maxey")

maxey_tables <- 
  maxey_url_2023 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
maxey_left <- maxey_tables[[1]]
maxey_right <- maxey_tables[[2]]

maxey_data_2023 <-
cbind(maxey_left, maxey_right)

view(maxey_data_c)


# Data for haliburton during 2022-2023 split
haliburton_url_2022 <- read_html("https://www.espn.com/nba/player/splits/_/id/4396993/type/nba/year/2023/category/perGame")

haliburton_tables <- 
  haliburton_url_2022 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
haliburton_left <- haliburton_tables[[1]]
haliburton_right <- haliburton_tables[[2]]

haliburton_data_2022 <-
  cbind(haliburton_left, haliburton_right)

# Data for haliburton during 2023-2024 split
haliburton_url_2023 <- read_html("https://www.espn.com/nba/player/splits/_/id/4396993/type/nba/year/2024/category/perGame")

haliburton_tables <- 
  haliburton_url_2023 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
haliburton_left <- haliburton_tables[[1]]
haliburton_right <- haliburton_tables[[2]]

haliburton_data_2022 <-
  cbind(haliburton_left, haliburton_right)



# Data for zion during 2022-2023 split

# Data for zion during 2023-2024 split



# Data for anthony edward during 2022-2023 split

# Data for anthony edward 2023-2024 split



# Data for lamelo during 2022-2023 split

# Data for lamelo during 2023-2024 split






#### Save data ####

write_csv(maxey_data_2022, "data/raw_data/maxey_data_2022.csv")
write_csv(maxey_data_2023, "data/raw_data/maxey_data_2023.csv")

write_csv(haliburton_data_2022, "data/raw_data/haliburton_data_2022.csv")
write_csv(haliburton_data_2023, "data/raw_data/haliburton_data_2023.csv")



         
