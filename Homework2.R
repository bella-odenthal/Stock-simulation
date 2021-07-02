######## HOMEWORK 2 ########

# Plot
numPath = 9
L = 50

plot(dta3, main = "Stock market simulation plot", xlab = "Time (days)", ylab= "Return (%)", ylim = c(0.00, 2.00), type = "l")
# note: I'm not sure if this represents the return of the stock or if the numbers (0.0-2.0) are accurate. 

for(i in 0:(numPath)) {
  dta1 = rnorm(L, 0, 0.05)
  dta2 = dta1 + 1
  dta3 = cumprod(dta2)
  lines(dta3, col = i, lty = 1)
}


# Relation to stock market
# This plot can be related to the stock market if each of the plotted lines represents a certain path that the stock will take,  
# based on returns, we can use the path that is closest to the actual path that the stock takes (in real life)
# and use its parameters / path to create a new "generation" whose results will more closely match the real stock. 
# Because we set the mean and standard deviation by ourselves in the rnorm() function, these are the parameters we will change. 
# Also, I think volatility = how the paths move randomly (or seemingly randomly) just like a stock. And stock price is affected by the return, which is the plot to the right. 