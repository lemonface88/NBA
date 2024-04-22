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

x <- c("2022-10-01", "2022-11-01", "2022-12-01", "2023-01-01", "2023-02-01", "2023-03-01", 
       "2023-04-01", "2023-10-01", "2023-11-01", "2023-12-01", "2024-01-01", "2024-02-01", "2024-03-01", "2024-04-01")

as.Date(x)

# create the colum of dates that will get added to the left later.

# clean zion data and combine it #
zion_2022 <- read_csv("data/raw_data/zion_data_2022.csv")
zion_2023 <- read_csv("data/raw_data/zion_data_2023.csv")


# take out the month and wanted data, stack it together
# merge two graphs by 2022 ontop of 2023, and then merge a table of the time to the left


# clean maxey data and combine it #
maxey_2022 <- read_csv("data/raw_data/maxey_data_2022.csv")
maxey_2023 <- read_csv("data/raw_data/maxey_data_2023.csv")


# clean lamelo data and combine it #
lamelo_2022 <- read_csv("data/raw_data/lamelo_data_2022.csv")
lamelo_2023 <- read_csv("data/raw_data/lamelo_data_2023.csv")


# clean haliburton data and combine it #
haliburton_2022 <- read_csv("data/raw_data/haliburton_data_2022.csv")
haliburton_2023 <- read_csv("data/raw_data/haliburton_data_2023.csv")


# clean anthony_edwards data and combine it #
anthony_edwards_2022 <- read_csv("data/raw_data/anthony_edward_data_2022.csv")
anthony_edwards_2023 <- read_csv("data/raw_data/anthony_edward_data_2022.csv")


#### Save data ####

# becase of errors that occur throughout the attemts to save files as  parquet, the files will not be saved as parquet format. 
#Error in parquet___WriterProperties___Builder__create() : 
#Cannot call parquet___WriterProperties___Builder__create(). See https://arrow.apache.org/docs/r/articles/install.html for help installing Arrow C++ libraries. 


write_csv(clean_zion_data, "data/analysis_data/cleaned_zion_data.csv")
write_csv(clean_lamelo_data, "data/analysis_data/cleaned_lamelo_data.csv")
write_csv(clean_maxey_data, "data/analysis_data/cleaned_maxey_data.csv")
write_csv(clean_haliburton_data, "data/analysis_data/cleaned_haliburton_data.csv")


