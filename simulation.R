library(corrplot)
gym <- read.csv('gym_churn_us.csv')
M <- cor(gym)
corrplot(M, method="circle")