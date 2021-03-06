#object x will be a tidy dataset 
#object y will be a character responding to the county name to be tested
annual.daily.mean <- function(x, y){ 
  z <- as.character(y)
  b <- filter(x, str_detect(`County Name`, z)) #obtaining desired county subset
  b %>%
    group_by(Year = str_sub(as.factor(date), start = 1, end = 4)) %>%
    summarize(o3.annual.mean = mean(o3, na.rm = T))
}