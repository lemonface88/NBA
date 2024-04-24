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

maxey_and_price <- read_csv("data/analysis_data/maxey_and_price.csv")
haliburton_and_price <- read_csv("data/analysis_data/haliburton_and_price.csv")
anthony_and_price <- read_csv("data/analysis_data/anthony_and_price.csv")


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


