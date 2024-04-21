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
library(arrow)

#### Clean data ####

#  janitor::clean_names()|>
#  tidyr::drop_na()|>

# clean zion data
raw_data_zion <- read_csv("data/raw_data/raw_zion_datasets.csv")

clean_zion_data <-
  raw_data_zion |>
  select(Day, FieldGoalsMade, FieldGoalsAttempted,FieldGoalsPercentage, TwoPointersPercentage, ThreePointersPercentage, FreeThrowsPercentage, Minutes)|>
  filter(Minutes > 0)
  

# clean haliburton data
raw_data_haliburton <- read_csv("data/raw_data/raw_haliburton_datasets.csv")

clean_haliburton_data <-
  raw_data_haliburton |>
  select(Day, FieldGoalsMade, FieldGoalsAttempted,FieldGoalsPercentage, TwoPointersPercentage, ThreePointersPercentage, FreeThrowsPercentage, Minutes)|>
  filter(Minutes > 0)

# clean lamelo data
raw_data_lamelo <- read_csv("data/raw_data/raw_lamelo_datasets.csv")

clean_lamelo_data <-
  raw_data_lamelo |>
  select(Day, FieldGoalsMade, FieldGoalsAttempted,FieldGoalsPercentage, TwoPointersPercentage, ThreePointersPercentage, FreeThrowsPercentage, Minutes)|>
  filter(Minutes > 0)


# clean maxey data
raw_data_maxey <- read_csv("data/raw_data/raw_maxey_datasets.csv")

clean_maxey_data <-
  raw_data_maxey |>
  select(Day, FieldGoalsMade, FieldGoalsAttempted,FieldGoalsPercentage, TwoPointersPercentage, ThreePointersPercentage, FreeThrowsPercentage, Minutes)|>
  filter(Minutes > 0)


#### Save data ####


# becase of errors that occur throughout the attemts to save files as  parquet, the files will not be saved as parquet format. 
#Error in parquet___WriterProperties___Builder__create() : 
#Cannot call parquet___WriterProperties___Builder__create(). See https://arrow.apache.org/docs/r/articles/install.html for help installing Arrow C++ libraries. 


write_csv(clean_zion_data, "data/analysis_data/cleaned_zion_data.csv")
write_csv(clean_lamelo_data, "data/analysis_data/cleaned_lamelo_data.csv")
write_csv(clean_maxey_data, "data/analysis_data/cleaned_maxey_data.csv")
write_csv(clean_haliburton_data, "data/analysis_data/cleaned_haliburton_data.csv")

