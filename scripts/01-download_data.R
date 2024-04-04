#### Preamble ####
# Purpose: Downloads and saves the data from sportsdataio
# Author: Harrison
# Date: Today
# Contact: harri.huang@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(arrow)

#### Download data ####


# All players data
all_player_datasets <-
  fromJSON("https://api.sportsdata.io/v3/nba/scores/json/Players?key=92a4662dc81b4f56bd99cc606f483004")


#Zion Williamson's data set
Zion_datasets <-
  fromJSON("https://api.sportsdata.io/v3/nba/stats/json/PlayerGameStatsBySeason/2023/20002271/all?key=92a4662dc81b4f56bd99cc606f483004")

#Anthony Edwards's data set
Anthony_datasets <-
  fromJSON("https://api.sportsdata.io/v3/nba/stats/json/PlayerGameStatsBySeason/2023/20002523/all?key=92a4662dc81b4f56bd99cc606f483004")

#Lamelo Ball data set
LaMelo_datasets <-
  fromJSON("https://api.sportsdata.io/v3/nba/stats/json/PlayerGameStatsBySeason/2023/20002528/all?key=92a4662dc81b4f56bd99cc606f483004")

#Tyrese Haliburton
Haliburton_datasets <-
  fromJSON("https://api.sportsdata.io/v3/nba/stats/json/PlayerGameStatsBySeason/2023/20002537/all?key=92a4662dc81b4f56bd99cc606f483004")

#Tyrese Maxey
maxey_datasets <-
  fromJSON("https://api.sportsdata.io/v3/nba/stats/json/PlayerGameStatsBySeason/2023/20002546/all?key=92a4662dc81b4f56bd99cc606f483004")



#### Save data ####


write_csv(all_player_datasets, "data/raw_data/raw_all_player_datasets.csv")

write_csv(Zion_datasets, "data/raw_data/raw_zion_datasets.csv")

write_csv(LaMelo_datasets, "data/raw_data/raw_lamelo_datasets.csv")

write_csv(Haliburton_datasets, "data/raw_data/raw_haliburton_datasets.csv")

write_csv(maxey_datasets, "data/raw_data/raw_maxey_datasets.csv")
         
