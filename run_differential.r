
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)

# mlb <- read_csv("mlb_elo.csv") %>% 
#   filter(season>1994)
# write_csv(mlb, "mlb_elo.csv")

mlb <- read_csv("mlb_elo.csv")

mets2015 <- mlb[(mlb$team == 'NYM' & mlb$season =='2015'),]

head(mets2015)

# Take the last ten games of each year
# Calculate run differential for playoff teams in those ten games
