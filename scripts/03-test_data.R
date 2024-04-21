#### Preamble ####
# Purpose: Tests data
# Author: Harrison Huang
# Date: April 20, 2024
# Contact: Harri.huang@mail.utoronto.ca
# License: MIT
# Pre-requisites: run 01-download_data.R and 02-data_cleaning.R
# Any other information needed? If nothing is printed, all tests have passed


#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(janitor)

#### Test data ####


# read cleaned player data

test_zion_data = read_csv(
  file = "data/analysis_data/cleaned_zion_data.csv",
  show_col_types = FALSE
)

test_lamelo_data = read_csv(
  file = "data/analysis_data/cleaned_maxey_data.csv",
  show_col_types = FALSE
)

test_haliburton_data = read_csv(
  file = "data/analysis_data/cleaned_lamelo_data.csv",
  show_col_types = FALSE
)

test_maxey_data = read_csv(
  file = "data/analysis_data/cleaned_haliburton_data.csv",
  show_col_types = FALSE
)



### Test the data above ###

# Test zion data #
if (min(test_zion_data$Minutes) < 1) {
  print("Game when player did not play detected")
}

if (max(test_zion_data$Minutes) > 48) {
  print("Player played more than max possible time")
}

if (min(test_youth_data$ticket_count) < 0) {
  print("Negative number in ticket count")
}

if (min(test_youth_data$ticket_count) < 0) {
  print("Negative number in ticket count")
}

if (min(test_youth_data$ticket_count) < 0) {
  print("Negative number in ticket count")
}

# Test lamelo data #

# Test lamelo data #
