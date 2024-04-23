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

test_anthony_edward = read_csv(
  file = "data/analysis_data/clean_anthony_edward.csv",
  show_col_types = FALSE
)

test_haliburton_data = read_csv(
  file = "data/analysis_data/clean_haliburton.csv",
  show_col_types = FALSE
)

test_maxey_data = read_csv(
  file = "data/analysis_data/clean_maxey.csv",
  show_col_types = FALSE
)

test_price = read_csv(
  file = "data/analysis_data/clean_price_data.csv",
  show_col_types = FALSE
)

### Test anthony_edward data above ###

# Test for negativescore 
if (min(test_anthony_edward$PTS) < 0) {
  print("Month with negative score detected")
}

# testing for realistic point average for the month
if (max(test_anthony_edward$PTS) > 50) {
  print("Player played more than max possible time")
}

# testing if blocks average was below 0
if (min(test_anthony_edward$BLK) < 0) {
  print("Month with negative score detected")
}

# testing for realistic blocks average for the month
if (max(test_anthony_edward$BLK) > 20) {
  print("Player blocks average may be unrealistic")
}

# testing if steal average was below 0
if (min(test_anthony_edward$STL) < 0) {
  print("Month with negative score detected")
}

# testing for realistic steal average for the month
if (max(test_anthony_edward$STL) > 20) {
  print("Player steal average may be unrealistic")
}


# testing if rebound average was below 0
if (min(test_anthony_edward$REB) < 0) {
  print("negative rebound detected")
}

# testing for realistic steal average for the month
if (max(test_anthony_edward$REB) > 20) {
  print("Player rebound average may be unrealistic")
}

# testing if assist average was below 0
if (min(test_anthony_edward$AST) < 0) {
  print("negative assist detected")
}

# testing for realistic assist average for the month
if (max(test_anthony_edward$AST) > 20) {
  print("Player assist average may be unrealistic")
}

### Test haliburton data ###

# Test for negativescore 
if (min(test_haliburton_data$PTS) < 0) {
  print("Month with negative score detected")
}

# testing for realistic point average for the month
if (max(test_haliburton_data$PTS) > 50) {
  print("Player played more than max possible time")
}

# testing if blocks average was below 0
if (min(test_haliburton_data$BLK) < 0) {
  print("Month with negative score detected")
}

# testing for realistic blocks average for the month
if (max(test_haliburton_data$BLK) > 20) {
  print("Player blocks average may be unrealistic")
}

# testing if steal average was below 0
if (min(test_haliburton_data$STL) < 0) {
  print("Month with negative score detected")
}

# testing for realistic steal average for the month
if (max(test_haliburton_data$STL) > 20) {
  print("Player steal average may be unrealistic")
}


# testing if rebound average was below 0
if (min(test_haliburton_data$REB) < 0) {
  print("negative rebound detected")
}

# testing for realistic steal average for the month
if (max(test_haliburton_data$REB) > 20) {
  print("Player rebound average may be unrealistic")
}

# testing if assist average was below 0
if (min(test_haliburton_data$AST) < 0) {
  print("negative assist detected")
}

# testing for realistic assist average for the month
if (max(test_haliburton_data$AST) > 20) {
  print("Player assist average may be unrealistic")
}

### Test maxey data ###


# Test for negativescore 
if (min(test_maxey_data$PTS) < 0) {
  print("Month with negative score detected")
}

# testing for realistic point average for the month
if (max(test_maxey_data$PTS) > 50) {
  print("Player played more than max possible time")
}

# testing if blocks average was below 0
if (min(test_maxey_data$BLK) < 0) {
  print("Month with negative score detected")
}

# testing for realistic blocks average for the month
if (max(test_maxey_data$BLK) > 20) {
  print("Player blocks average may be unrealistic")
}

# testing if steal average was below 0
if (min(test_maxey_data$STL) < 0) {
  print("Month with negative score detected")
}

# testing for realistic steal average for the month
if (max(test_maxey_data$STL) > 20) {
  print("Player steal average may be unrealistic")
}


# testing if rebound average was below 0
if (min(test_maxey_data$REB) < 0) {
  print("negative rebound detected")
}

# testing for realistic steal average for the month
if (max(test_maxey_data$REB) > 20) {
  print("Player rebound average may be unrealistic")
}

# testing if assist average was below 0
if (min(test_maxey_data$AST) < 0) {
  print("negative assist detected")
}

# testing for realistic assist average for the month
if (max(test_maxey_data$AST) > 20) {
  print("Player assist average may be unrealistic")
}


## Test Price Data ##

# testing for realistic assist average for the month
if (min(test_price$`Tyrese Haliburton`) < 0) {
  print("card price negative")
}

if (min(test_price$`Anthony Edward`) < 0) {
  print("card price negative")
}

if (min(test_price$`Tyrese Maxey`) < 0) {
  print("card price negative")
}



