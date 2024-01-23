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

# Use a loop to iterate over columns or rows
for (col in colnames(cleaned_data)) {
  # Perform some operation on each column
}

# Continue with any additional analysis or visualization steps

