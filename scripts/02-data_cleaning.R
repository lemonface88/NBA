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
library(tibble)
#### Clean data ####

#  janitor::clean_names()|>
#  tidyr::drop_na()|>

Months <- c("2022-10-01", "2022-11-01", "2022-12-01", "2023-01-01", "2023-02-01", "2023-03-01", 
       "2023-04-01", "2023-10-01", "2023-11-01", "2023-12-01", "2024-01-01", "2024-02-01", "2024-03-01", "2024-04-01")

Months <- format(as.Date(Months), "%Y-%m")


# create the colum of dates that will get added to the left later.


clean_price_data <- read_csv("data/raw_data/card_price.csv")

view(clean_price_data)

clean_price_data <- clean_price_data[-c(8), ]
clean_price_data$`2022-23` <- NULL

clean_price_data <-
  clean_price_data|>
  add_column(Date = Months, .before = "LaMelo")

view(clean_price_data)


# clean maxey data and combine it #
maxey_2022 <- read_csv("data/raw_data/maxey_data_2022.csv")
maxey_2023 <- read_csv("data/raw_data/maxey_data_2023.csv")

temp_maxey_2022 <-
maxey_2022 |>
  filter(
           X1...1 == "October"| 
           X1...1 == "November"| 
           X1...1 == "December"| 
           X1...1 == "January"|
           X1...1 == "February"|
           X1...1 == "March"|
           X1...1 == "April") |>
  select(X11, X12, X13, X14, X17)


temp_maxey_2023 <-
maxey_2023 |>
  filter(X1...1 == "October"| 
           X1...1 == "November"| 
           X1...1 == "December"| 
           X1...1 == "January"|
           X1...1 == "February"|
           X1...1 == "March"|
           X1...1 == "April") |>
  select(X11, X12, X13, X14, X17)
  

clean_maxey <- rbind(temp_maxey_2022, temp_maxey_2023)|>
  rename(
    REB = X11,
    AST = X12,
    BLK = X13,
    STL = X14,
    PTS = X17
  )

clean_maxey <-
  clean_maxey |>
  mutate(
    REB = as.double(REB),
    AST = as.double(AST),
    BLK = as.double(BLK),
    STL = as.double(STL),
    PTS = as.double(PTS),
  )


clean_maxey <- add_column(clean_maxey, Months, .before = "REB")
  

# clean lamelo data and combine it #
lamelo_2022 <- read_csv("data/raw_data/lamelo_data_2022.csv")
lamelo_2023 <- read_csv("data/raw_data/lamelo_data_2023.csv")

view(lamelo_2022)
temp_lamelo_2022 <-
  lamelo_2022 |>
  filter(
    X1...1 == "October"| 
      X1...1 == "November"| 
      X1...1 == "December"| 
      X1...1 == "January"|
      X1...1 == "February"|
      X1...1 == "March"|
      X1...1 == "April") |>
  select(X11, X12, X13, X14, X17)


temp_lamelo_2023 <-
  lamelo_2023 |>
  filter(
    X1...1 == "October"| 
      X1...1 == "November"| 
      X1...1 == "December"| 
      X1...1 == "January"|
      X1...1 == "February"|
      X1...1 == "March"|
      X1...1 == "April") |>
  select(X11, X12, X13, X14, X17)


clean_lamelo <- rbind(temp_lamelo_2022, temp_lamelo_2023)|>
  rename(
    REB = X11,
    AST = X12,
    BLK = X13,
    STL = X14,
    PTS = X17
  )

view(clean_lamelo)
clean_lamelo <- add_column(clean_lamelo, Months, .before = "REB")


# clean haliburton data and combine it #
haliburton_2022 <- read_csv("data/raw_data/haliburton_data_2022.csv")
haliburton_2023 <- read_csv("data/raw_data/haliburton_data_2023.csv")

temp_haliburton_2022 <-
  haliburton_2022 |>
  filter(
    X1...1 == "October"| 
      X1...1 == "November"| 
      X1...1 == "December"| 
      X1...1 == "January"|
      X1...1 == "February"|
      X1...1 == "March"|
      X1...1 == "April") |>
  select(X11, X12, X13, X14, X17)


temp_haliburton_2023 <-
  haliburton_2023 |>
  filter(
    X1...1 == "October"| 
      X1...1 == "November"| 
      X1...1 == "December"| 
      X1...1 == "January"|
      X1...1 == "February"|
      X1...1 == "March"|
      X1...1 == "April") |>
  select(X11, X12, X13, X14, X17)

clean_haliburton <- rbind(temp_haliburton_2022, temp_haliburton_2023)|>
  rename(
    REB = X11,
    AST = X12,
    BLK = X13,
    STL = X14,
    PTS = X17
  )

clean_haliburton <-
  clean_haliburton |>
    mutate(
      REB = as.double(REB),
      AST = as.double(AST),
      BLK = as.double(BLK),
      STL = as.double(STL),
      PTS = as.double(PTS),
    )

clean_haliburton <- add_column(clean_haliburton, Months, .before = "REB")


# clean anthony_edward data and combine it #
anthony_edward_2022 <- read_csv("data/raw_data/anthony_edward_data_2022.csv")
anthony_edward_2023 <- read_csv("data/raw_data/anthony_edward_data_2022.csv")

temp_anthony_edward_2022 <-
  anthony_edward_2022 |>
  filter(
    X1...1 == "October"| 
      X1...1 == "November"| 
      X1...1 == "December"| 
      X1...1 == "January"|
      X1...1 == "February"|
      X1...1 == "March"|
      X1...1 == "April") |>
  select(X11, X12, X13, X14, X17)


temp_anthony_edward_2023 <-
  anthony_edwards_2023 |>
  filter(
    X1...1 == "October"| 
      X1...1 == "November"| 
      X1...1 == "December"| 
      X1...1 == "January"|
      X1...1 == "February"|
      X1...1 == "March"|
      X1...1 == "April") |>
  select(X11, X12, X13, X14, X17)

clean_anthony_edward <- rbind(temp_anthony_edward_2022, temp_anthony_edward_2023)|>
  rename(
    REB = X11,
    AST = X12,
    BLK = X13,
    STL = X14,
    PTS = X17
  )

clean_anthony_edward <-
  clean_anthony_edward |>
  mutate(
    REB = as.double(REB),
    AST = as.double(AST),
    BLK = as.double(BLK),
    STL = as.double(STL),
    PTS = as.double(PTS),
  )


clean_anthony_edward <- add_column(clean_anthony_edward, Months, .before = "REB")


## Create data for model ##

## creating data set for tyrese maxey
temp_maxey_price <-
  price_data|>
  select(`Tyrese Maxey`)

maxey_and_price <- add_column(clean_maxey, temp_maxey_price)


## creating data set for tyrese haliburton
temp_haliburton_price <-
  price_data|>
  select(`Tyrese Haliburton`)

haliburton_and_price <- add_column(clean_haliburton, temp_haliburton_price)


# creating data set for anthony edward
temp_anthony_price <-
  price_data|>
  select(`Anthony Edward`)

anthony_and_price <- add_column(clean_anthony_edward, temp_anthony_price)

#### Save data ####

# becase of errors that occur throughout the attemts to save files as  parquet, the files will not be saved as parquet format. 
#Error in parquet___WriterProperties___Builder__create() : 
#Cannot call parquet___WriterProperties___Builder__create(). See https://arrow.apache.org/docs/r/articles/install.html for help installing Arrow C++ libraries. 

write_csv(clean_maxey, "data/analysis_data/clean_maxey.csv")
write_csv(clean_haliburton, "data/analysis_data/clean_haliburton.csv")
write_csv(clean_anthony_edward, "data/analysis_data/clean_anthony_edward.csv")
write_csv(clean_price_data, "data/analysis_data/clean_price_data.csv")

write_csv(maxey_and_price, "data/analysis_data/maxey_and_price.csv")
write_csv(haliburton_and_price, "data/analysis_data/haliburton_and_price.csv")
write_csv(anthony_and_price, "data/analysis_data/anthony_and_price.csv")

