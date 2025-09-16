
#Part 01
# Uniform on [0,40]; want P(10 <= X <= 25)
p1 <- (25 - 10) / 40
# or using R's punif:
p1_alt <- punif(25, min=0, max=40) - punif(10, min=0, max=40)

p1; p1_alt


#Part 02
lambda <- 1/3
p2 <- pexp(2, rate = lambda)   # P(X <= 2)
p2

#Part 03 i.
p3i <- pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)
p3i

#Part 03 ii.
iq95 <- qnorm(0.95, mean = 100, sd = 15)
iq95
