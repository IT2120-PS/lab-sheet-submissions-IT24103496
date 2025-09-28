setwd("C:\\Users\\Dasun\\OneDrive\\Desktop\\lab 8 stats")


#PART 01
weights <- scan("Exercise - LaptopsWeights.txt", skip = 1)

po_mean_wt <-mean(weights)
po_sd_wt <-sd(weights)

cat("Laptop Weights population Mean:",po_mean_wt, "\n")
cat("Laptop weights population Std Dev",po_sd_wt, "\n")



#PART 02

set.seed(456) 
sample_means_wt <- numeric(25) 
sample_sds_wt <- numeric(25) 

for (i in 1:25) {
  s <- sample(weights, size = 6, replace = TRUE) 
  sample_means_wt[i] <- mean(s) 
  sample_sds_wt[i] <- sd(s) 
  }



#PART 03

mean_sample_means_wt <- mean(sample_means_wt)
sd_sample_means_wt <- sd(sample_means_wt) 

cat("Mean of Sample Means (Weights):", mean_sample_means_wt, "\n") 
cat("Std Dev of Sample Means (Weights):", sd_sample_means_wt, "\n") 

cat("Compare: Sample Means vs Population Mean & Std Dev\n")




