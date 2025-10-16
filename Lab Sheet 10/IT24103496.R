setwd("C:\\Users\\Dasun\\OneDrive\\Desktop\\it24103496")

#PART 01

#1
# Observed frequencies of snack types
obs <- c(120, 95, 85, 100)

# Define equal probabilities for 4 categories
prob <- c(0.25, 0.25, 0.25, 0.25)

#2
# Perform Chi-square Goodness-of-Fit Test
chisq.test(obs, p = prob)

#3
#There is no significant difference among the four snack types.
#Customers choose all four snacks equally likely.
