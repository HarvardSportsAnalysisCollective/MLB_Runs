
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)

mlb <- read_csv("mlb_elo.csv")

teams <- unique(mlb$team)

mets2015 <- mlb[(mlb$team == 'NYM' & mlb$season =='2015'),]

mets2015[162:172,]

mets2015$game_number[172]

teams <- unique(mlb$team)
years <- unique(mlb$season)

r_diff <- array(c(0),dim = c(30,2))

for (team in teams[1:30]){
  for (season in years[1:24]){
    
    games <- mlb[(mlb$team == team & mlb$season == season),]
    
    if(lengths(games)[1] > 162){
      last_ten <- games[152:162,]
      
      runs_against <- sum(last_ten$score1)
      runs_for <- sum(last_ten$score2)

      # just need to name the dimentions of the array
      r_diff[team, season] <- runs_for - runs_against
    }
  }
}

# Take the last ten games of each year
# Calculate run differential for playoff teams in those ten games
