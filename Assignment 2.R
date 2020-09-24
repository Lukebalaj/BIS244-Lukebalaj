library(dplyr)
#set working directory
#setwd(./"covid-19-data/")
US <- read.csv("covid-19-data/us-states.csv")

#filter for just PA
PA_data <- states %>% filter(state == "Pennsylvania")

#create an adjustment
adjusted <- PA_data %>% mutate(adj_deaths = deaths)
