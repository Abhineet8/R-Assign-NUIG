# Load necessary libraries
library(dplyr)

# Load datasets
df1 <- read.csv("C:/Users/Abhineet/Desktop/R abhineet/online_retail_customer_churn.csv")
df2 <- read.csv("C:/Users/Abhineet/Desktop/R abhineet/shopping_trends_updated.csv")
df3 <- read.csv("C:/Users/Abhineet/Desktop/R abhineet/Customers.csv")

# View structure of datasets to join them
str(df1)
str(df2)
str(df3)

# Renaming columns to ensure consistency
names(df2)[names(df2) == "Customer.ID"] <- "Customer_ID"
names(df3)[names(df3) == "CustomerID"] <- "Customer_ID"

# Joining datasets
# First, join 'online_retail_customer_churn' with 'shopping_trends_updated'
joined_data_1 <- merge(df1, df2, by = "Customer_ID", all.x = TRUE)

# Then, join the result with 'Customers'
df <- merge(joined_data_1, df3, by = "Customer_ID", all.x = TRUE)

# Check the first few rows of the final dataset
head(df)

# Check the structure of the final dataset to ensure everything looks correct
str(df)