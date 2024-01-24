# Load necessary libraries
library(dplyr)

# Load your dataset into a data frame
original_data <- read.csv("iphone_usage_data.csv")

# Display original data
cat("Original Data:")
print(original_data)

# Data Cleaning/Preprocessing
cleaned_data <- original_data %>%
  mutate(Wifi_Used_at_Home = Data_Usage_GB / 10) %>%
  # Data Usage divided by 2 to estimate how much data came from home wifi
  #since I'm only at home for 10 hours each day.
  na.omit()

  cat("\nCleaned Data:")
print(cleaned_data)

# Display summary statistics and visualizations
cat("\nSummary Statistics:")
summary(cleaned_data)


#The for loop checks for days that home usage was over 1gb and prints it to the 
#screen alongside the date and screentime hours.
for (i in seq(nrow(cleaned_data))) {
  if (cleaned_data$Wifi_Used_at_Home[i] > 1) {
    cat("Date:", cleaned_data$Date[i], "\n")
    cat("Screentime Hours:", cleaned_data$Screentime_Hours[i], "\n")
    cat("Data Usage from Home Wifi:", cleaned_data$Wifi_Used_at_Home[i], "GB\n\n")
  }
}



