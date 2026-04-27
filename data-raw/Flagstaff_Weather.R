library(tidyverse)
library(lubridate)

Flagstaff_Weather <- read.csv("data-raw/Pulliam_Airport_Weather_Station.csv") %>%
  select(DATE, PRCP, SNOW, TMAX, TMIN) %>%
  mutate(
    DATE = ymd(DATE),
    PRCP = as.numeric(PRCP),
    SNOW = as.numeric(SNOW),
    TMAX = as.numeric(TMAX),
    TMIN = as.numeric(TMIN))
usethis::use_data(Flagstaff_Weather, overwrite = TRUE)
