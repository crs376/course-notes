library(tidyverse)
#install.packages("skimr")
library(skimr)

# read in corona .csv
coronavirus <- read_csv('https://raw.githubusercontent.com/RamiKrispin/coronavirus/master/csv/coronavirus.csv', col_types = cols(province = col_character()))
table(coronavirus$type)

View(coronavirus)
skim(coronavirus)

ggplot(coronavirus) + geom_line(mapping = aes(x = date, y = cases, linetype = type))
filter(coronavirus, cases > 0)

filter(coronavirus, country == "US" | country == "Canada")
filter(coronavirus, country %in% c("US", "Canada"))

filter(coronavirus, country == "US", type =="death")
us_death <- filter(coronavirus, country == "US", type == "death")

filter(coronavirus, country %in% c("France", "Norway", "Ireland"), type =="death", date =="2020-10-04")

select(coronavirus, -province, -lat, -long)

select(coronavirus, -date, -type, -cases)

coronavirus
select(coronavirus, country:long)
select(coronavirus, casetype = type, everything())
rename(coronavirus, casetype = type)

coronavirus_us <- filter(coronavirus, country == "US")

coronavirus %>% head(3)
head(coronavirus, 3)

coronavirus %>% 
  filter(country == "US") %>%
  select(-lat, -long, -province)

coronavirus %>%
  filter(country == "US" | country == "Canada" | country == "Mexico") %>%
  select(-date, -province, -lat, -long)