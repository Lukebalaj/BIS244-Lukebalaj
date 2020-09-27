library("tidyverse")
#set working directory
setwd("~/Documents/BIS244/BIS-244-balajluke/COVID-19_Project/covid-19-data")
US <- read_csv("us-states.csv")

#filter for just PA
pa_data <- filter(US, state == "Pennsylvania")
pa_data <- mutate(pa_data, adj_deaths = deaths)
n <- length(pa_data$date)

for (i in 1:n){
  if (pa_data$date[i]=="2020-04-21"){
    pa_data$adj_deaths[i] <- pa_data$deaths[i]-282}
}

for (i in 1:n){
  if (pa_data$date[i]=="2020-04-22"){
    pa_data$adj_deaths[i] <- pa_data$deaths[i]-297}
}

#sum of all adj_deaths in PA
sum(pa_data$adj_deaths)