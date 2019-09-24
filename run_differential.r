
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)

# mlb <- read_csv("mlb_elo.csv") %>% 
#   filter(season>1994)
# write_csv(mlb, "mlb_elo.csv")

mlb <- read_csv("mlb_elo.csv")

mlb2019 <- mlb[(mlb$date > '2019-03-25') $ (mlb$team1),]

mlb2019['date']

length(mlb2019['date'][1,])

mlb2019['date'][1]

# Take the last ten games of each year
# Calculate run differential for playoff teams in those ten games
