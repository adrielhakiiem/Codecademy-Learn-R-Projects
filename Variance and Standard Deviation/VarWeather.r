---
title: "Standard Deviation"
output: html_notebook
---
```{r message=FALSE, warning=FALSE, error=TRUE}
library(readr)
library(dplyr)
```

```{r error=TRUE}
load("project.Rda")
```

```{r error=TRUE}

# Inspect Data
head(london_data) # first few rows of dataset
nrow(london_data) # checking the num of rows 

temp <- london_data$TemperatureC # taking only TemperatureC's column 
average_temp <- mean(temp)
average_temp

# Variance and SD for the year

# variance 
temperature_var <- var(temp)
temperature_var
# standard deviation 
temperature_standard_deviation <- sd(temp)
temperature_standard_deviation


#Inspect once again
head(london_data)

# Get monthly temperature average
june <- london_data %>% filter(month == "06") # filter by month (june)
july <- london_data %>% filter(month == "07") # july 

# Analyze by month (beware of printing the dataframe)

# analyzing the mean temperature of june and july 
mean(june$TemperatureC)
mean(july$TemperatureC)
# standard deviation of temperature of june and july 
sd(june$TemperatureC)
sd(july$TemperatureC)


# Analyze by month, see through dataframe 
monthly_stats <- london_data %>%
    group_by(month) %>%
    summarize(mean = mean(TemperatureC),
              standard_deviation = sd(TemperatureC))

monthly_stats
```
