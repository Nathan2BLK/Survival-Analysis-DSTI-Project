library(tidyverse)
library(ggsurvfit)
library(dplyr)
library(survival)
library(survminer)
setwd('C:/Users/joelb/Desktop/survival_analysis')
gym_data <- read_csv('gym_churn_us.csv')

s <- Surv(gym_data$Lifetime, gym_data$Churn)
survfit(s~gym_data$Near_Location+gym_data$gender)
survfit(Surv(gym_data$Lifetime, gym_data$Churn)~gym_data$Near_Location+gym_data$gender, data=gym_data)
sfit <- survfit(Surv(gym_data$Lifetime, gym_data$Churn)~gym_data$Near_Location+gym_data$gender, data=gym_data)


summary(sfit)

sfit <- survfit(Surv(gym_data$Lifetime, gym_data$Churn)~gym_data$Near_Location+gym_data$gender, data=gym_data)
plot(sfit)

