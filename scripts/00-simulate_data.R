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
    player_name =  sample(
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


##Simulate Player Card Price data##

simulated_price_data <-
  tibble(
    # randomly select a year to assign to the ticket_count
    month_of_season = sample(
      x = c("October", "November", "December", "January", "February", "March", "April"),
      size = 1000,
      replace = TRUE
    ), 
    
    # randomly assigning each player to a month
    player_name =  sample(
      x = c("LaMelo Ball", "Tyrese Maxey", "Tyrese Haliburton", "Zion Williamson", "Edward Anthony"),
      size = 1000,
      replace = TRUE),
    
    # assign random price to month and person
    
    price =  sample(
      x = c(round(500:1000/3, digits = 2)),
      size = 1000,
      replace = TRUE),

  )

# Example of simulated player#
simulated_lamelo_price <-
  simulated_price_data|>
  filter(player_name =="LaMelo Ball")|>
  summarise(average_price = mean(price),
            .by = month_of_season) 


