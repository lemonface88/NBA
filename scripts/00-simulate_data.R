#### Preamble ####
# Purpose: Simulates player data
# Author: Harrison
# Date: April 20, 2024
# Contact: Harri.huang@mail.utornto.ca
# License: MIT



#### Workspace setup ####
library(tidyverse)


#### Simulate data ####

set.seed(888)


simulated_player_data <-
  tibble(
    # randomly select a year to assign to the ticket_count
    offence_year = sample(
      x = c("October", "November", "December", "January", "Feburary", "March", "April"),
      size = 1000,
      replace = TRUE
    ), 
    
    # randomly assigning each player to a month
    age_group =  sample(
      x = c("LaMelo Ball", "Tyrese Maxey", "Tyrese Haliburton", "Zion Williamson", "Edward Anthony"),
      size = 1000,
      replace = TRUE),
    
    # statistics of points per game
    ppg = sample(
      x = c(round(0:500/10, digits = 1)),
      size = 1000,
      replace = TRUE),
    
    # statistics of assist per game 
    ast = sample(
      x = c(round(0:70/10, digits = 1)),
      size = 1000,
      replace = TRUE),
    
    # statistics of blocks per game
    blk = sample(
      x = c(round(0:10/10, digits = 1)),
      size = 1000,
      replace = TRUE),
    
    
    # statistics of rebound per game
    reb = sample(
      x = c(round(0:70/10, digits = 1)),
      size = 1000,
      replace = TRUE),
    
    
    # statistics of steals per game
    stl = sample(
      x = c(round(0:20/10, digits = 1)),
      size = 1000,
      replace = TRUE)
    
  )

view(simulated_player_data)