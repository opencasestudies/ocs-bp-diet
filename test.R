library(tidyverse)
sep_age_diet_data %>%
  distinct(location_name)%>%
  pull()