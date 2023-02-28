library(tidyverse)
hotel_bookings <-
  read_csv("/home/magdy/Documents/R/case_study_3/hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)
ggplot(data = hotel_bookings) + 
  geom_point(mapping = aes(x = lead_time , y = children))
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))