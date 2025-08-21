setwd("C:/Users/it24103496/Desktop/it24103496")

branch_data <- read.csv("Exercise.txt",header = TRUE)

head(branch_data)

str(branch_data)

boxplot(branch_data$Sales_X1 , main ="Boxplot of Sales", ylab = "sales")

fivenum(branch_data$Advertising_X2)

IQR(branch_data$Advertising_X2)

find_outliers <-function(x) {
  Q1 <- quantile(x , 0.25)
  Q3 <- quantile(X , 0.75)
  IQR_value <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 *IQR_value
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
  
}
find_outliers(branch_data$Years_x3)
}

