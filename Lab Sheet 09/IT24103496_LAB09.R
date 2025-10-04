# Set working directory (change the path accordingly)
setwd("C:\\Users\\Dasun\\OneDrive\\Desktop\\it24103496")

# 1. Generate a random sample of size 25
set.seed(123)  # for reproducibility
sample_data <- rnorm(25, mean = 45, sd = 2)
sample_data

# 2. 
# One-sample t-test with alternative hypothesis "less"
t_test_result <- t.test(sample_data, mu = 46, alternative = "less")


t_test_result

# Extract values separately
t_statistic <- t_test_result$statistic
p_value <- t_test_result$p.value
conf_interval <- t_test_result$conf.int

cat("Test Statistic:", t_statistic, "\n")
cat("P-value:", p_value, "\n")
cat("95% Confidence Interval:", conf_interval, "\n")
