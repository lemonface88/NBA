#### Preamble ####
# Purpose: Clean out coluns with uneeded data
# Author: Harrison Huang
# Date: 6 April 2024
# Contact: harri.huang@mail.utoronto.ca
# License: MIT



#### Workspace setup ####
library(tidyverse)
library(janitor)
library(tidyr)

#### Clean data ####


# clean zion data
raw_data_zion <- read_csv("data/raw_data/raw_zion_datasets.csv")

clean_zion_data <-
  raw_data_zion |>
  janitor::clean_names()|>
  tidyr::drop_na()|>
  
  



raw_data_haliburton <- read_csv("data/raw_data/raw_haliburton_datasets.csv")

raw_data_lamelo <- read_csv("data/raw_data/raw_lamelo_datasets.csv")

raw_data_maxey <- read_csv("data/raw_data/raw_maxey_datasets.csv")


#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
