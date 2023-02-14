library(tidyverse)

#skimr library used for summarizing data
library(skimr)

#janitor library has functions for data cleaning
library(janitor)

#importing csv file by readr library from tidyverse and store it as
#Data frame
hotel_bookings <- read_csv("/home/magdy/Documents/R/Case_Studey_2/hotel_bookings_2.csv")

#View(hotel_bookings)
# we are going to summarize our data by using head() and view
#first few rows
head(hotel_bookings)

#the following one to show the column names of our data set
colnames(hotel_bookings)

# now we will arrange the data in descending order by the lead time
#so we put a minus before lead_time
hotel_bookings %>% 
  arrange(-lead_time)

min(hotel_bookings$lead_time)
max(hotel_bookings$lead_time)

#now we well calculate the average of the lead time
mean(hotel_bookings$lead_time)
hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
mean(hotel_bookings_city$lead_time)

#now we will find  including the maximum and minimum lead time including to 
#the hotel

hotel_sumarry <- hotel_bookings%>%
  group_by(hotel)%>%
  summarize(hotel_max_leadTime = max(lead_time),
            hotel_min_leadTime = min(lead_time))
head(hotel_sumarry)