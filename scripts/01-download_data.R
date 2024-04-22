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
library(readxl)
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

haliburton_data_2023 <-
  cbind(haliburton_left, haliburton_right)



# Data for zion williamson during 2022-2023 split
zion_url_2022 <- read_html("https://www.espn.com/nba/player/splits/_/id/4395628/type/nba/year/2023/category/perGame")

zion_tables <- 
  zion_url_2022 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
zion_left <- zion_tables[[1]]
zion_right <- zion_tables[[2]]

zion_data_2022 <-
  cbind(zion_left, zion_right)

# Data for zion williamson during 2023-2024 split
zion_url_2023 <- read_html("https://www.espn.com/nba/player/splits/_/id/4395628/type/nba/year/2024/category/perGame")

zion_tables <- 
  zion_url_2023 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
zion_left <- zion_tables[[1]]
zion_right <- zion_tables[[2]]

zion_data_2023 <-
  cbind(zion_left, zion_right)


# Data for anthony edward during 2022-2023 split
anthony_edward_url_2022 <- read_html("https://www.espn.com/nba/player/splits/_/id/4594268/type/nba/year/2023/category/perGame")

anthony_edward_tables <- 
  anthony_edward_url_2022 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
anthony_edward_left <- anthony_edward_tables[[1]]
anthony_edward_right <- anthony_edward_tables[[2]]

anthony_edward_data_2022 <-
  cbind(anthony_edward_left, anthony_edward_right)

# Data for anthony edward 2023-2024 split
anthony_edward_url_2023 <- read_html("https://www.espn.com/nba/player/splits/_/id/4594268/type/nba/year/2024/category/perGame")

anthony_edward_tables <- 
  anthony_edward_url_2023 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
anthony_edward_left <- anthony_edward_tables[[1]]
anthony_edward_right <- anthony_edward_tables[[2]]

anthony_edward_data_2023 <-
  cbind(anthony_edward_left, anthony_edward_right)



# Data for lamelo during 2022-2023 split
lamelo_url_2022 <- read_html("https://www.espn.com/nba/player/splits/_/id/4432816/type/nba/year/2023/category/perGame")

lamelo_tables <- 
  lamelo_url_2022 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
lamelo_left <- lamelo_tables[[1]]
lamelo_right <- lamelo_tables[[2]]

lamelo_data_2022 <-
  cbind(lamelo_left, lamelo_right)

# Data for lamelo during 2023-2024 split

lamelo_url_2023 <- read_html("https://www.espn.com/nba/player/splits/_/id/4432816/type/nba/year/2023/category/perGame")

lamelo_tables <- 
  lamelo_url_2023 |>
  html_nodes("table")|>
  html_table(fill = TRUE)

# the big table on the ESPN website is actually split in half, therefore we need to merge it back after scraping it
lamelo_left <- lamelo_tables[[1]]
lamelo_right <- lamelo_tables[[2]]

lamelo_data_2023 <-
  cbind(lamelo_left, lamelo_right)


##Importing the Price data##

card_price <- read_excel("~/Downloads/Card Price.xlsx")
View(Card_Price) 

#### Save data ####

write_csv(maxey_data_2022, "data/raw_data/maxey_data_2022.csv")
write_csv(maxey_data_2023, "data/raw_data/maxey_data_2023.csv")

write_csv(haliburton_data_2022, "data/raw_data/haliburton_data_2022.csv")
write_csv(haliburton_data_2023, "data/raw_data/haliburton_data_2023.csv")

write_csv(zion_data_2022, "data/raw_data/zion_data_2022.csv")
write_csv(zion_data_2023, "data/raw_data/zion_data_2023.csv")

write_csv(anthony_edward_data_2022, "data/raw_data/anthony_edward_data_2022.csv")
write_csv(anthony_edward_data_2023, "data/raw_data/anthony_edward_data_2023.csv")

write_csv(lamelo_data_2022, "data/raw_data/lamelo_data_2022.csv")
write_csv(lamelo_data_2023, "data/raw_data/lamelo_data_2023.csv")

write_csv(card_price, "data/raw_data/card_price.csv")
