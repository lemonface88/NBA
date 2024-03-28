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


#### Download data ####




#### Save data ####

# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
