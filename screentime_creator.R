# Load necessary libraries
library(dplyr)

# Set a seed for reproducibility
set.seed(123)

# Generate data for September 2023 - December 2023
start_date <- as.Date("2023-09-01")
end_date <- as.Date("2023-12-31")
dates <- seq(start_date, end_date, by = "day")

# Generate random screentime and data usage
usage_data <- data.frame(
  Date = dates,
  Screentime_Hours = runif(length(dates), min = 0, max = 24),  # The screentime in hours
  Data_Usage_GB = runif(length(dates), min = 0, max = 12)       # Data usage in GB
)

# Save data to a CSV file
write.csv(usage_data, "iphone_usage_data.csv", row.names = FALSE)

# Display a preview of the generated data
cat("Generated Data:")
head(usage_data)

