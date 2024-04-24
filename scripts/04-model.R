#### Preamble ####
# Purpose: Models... [...UPDATE THIS...]
# Author: Harrison Huang
# Date: April 23, 2024
# Contact: Harri.huang@mail.utoronto.ca
# License: MIT
# Pre-requisites: N/A
# Any other information needed? N/A


#### Workspace setup ####
library(tidyverse)
library(rstanarm)
library(arrow)

#### Read data ####
price_data <- read_csv("data/analysis_data/clean_price_data.csv")

maxey <- read_csv("data/analysis_data/clean_maxey.csv")
haliburton <- read_csv("data/analysis_data/clean_haliburton.csv")
anthony <- read_csv("data/analysis_data/clean_anthony_edward.csv")

## creating data set for tyrese maxey
temp_maxey_price <-
  price_data|>
  select(`Tyrese Maxey`)

maxey_and_price <- add_column(maxey, temp_maxey_price)


## creating data set for tyrese haliburton
temp_haliburton_price <-
  price_data|>
  select(`Tyrese Haliburton`)

haliburton_and_price <- add_column(haliburton, temp_haliburton_price)


# creating data set for anthony edward
temp_anthony_price <-
  price_data|>
  select(`Anthony Edward`)

anthony_and_price <- add_column(anthony, temp_anthony_price)


### Model data ####

## Maxey Model ##
maxey_model <-
  stan_glm(
    formula = `Tyrese Maxey` ~ REB + AST + STL + BLK + PTS,
    data = maxey_and_price,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 888
  )

## Haliburton Model ##
haliburton_model <-
  stan_glm(
    formula = `Tyrese Haliburton` ~ REB + AST + STL + BLK + PTS,
    data = haliburton_and_price,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 888
  )

## Anthon Edward Model ##
anthony_model <-
  stan_glm(
    formula = `Anthony Edward` ~ REB + AST + STL + BLK + PTS,
    data = anthony_and_price,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 888
  )






#### Save model ####
saveRDS(
  maxey_model,
  file = "models/maxey_model.rds"
)

saveRDS(
  haliburton_model,
  file = "models/haliburton_model.rds"
)

saveRDS(
  anthony_model,
  file = "models/anthony_model.rds"
)

