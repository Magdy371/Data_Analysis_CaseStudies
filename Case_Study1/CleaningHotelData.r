library(tidyverse)
library(skimr)
library(janitor)
#importing Csv file data and store it as a data frame
bookings_df <- read_csv("/home/magdy/Documents/R/hotel_bookings.csv")
skim_without_charts(bookings_df)
trimmed_df <- bookings_df %>%
  select(hotel , is_canceled , lead_time)%>%
  rename(hotel_type = hotel)
#view(trimmed_df)
combined_df <- bookings_df %>%
  select(arrival_date_month , arrival_date_year)%>%
  unite(arrival_month_year , c(arrival_date_month , arrival_date_year), sep = " ")
#View(combined_df)

people_fields <- bookings_df %>%
  mutate(field = adults + babies + children)
head(people_fields)
#View(people_fields)
summary_staistics <- bookings_df %>%
  summarize(total_canceled = sum(is_canceled) , avarage_leadTime = mean(lead_time))
summary_staistics