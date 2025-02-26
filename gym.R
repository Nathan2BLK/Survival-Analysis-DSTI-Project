library(tidyverse)
library(ggsurvfit)
library(dplyr)
library(survival)
library(survminer)
setwd('C:/Users/joelb/Desktop/survival_analysis')
gym_data <- read_csv('gym_churn_us.csv')

s <- with(gym_data, Surv(gym_data$Lifetime,gym_data$Churn))
c=coxph(s ~ as.factor(gym_data$gender)++gym_data$Near_Location+gym_data$Partner+gym_data$Promo_friends+gym_data$Phone+gym_data$Contract_period+gym_data$Group_visits+gym_data$Age+gym_data$Avg_additional_charges_total+gym_data$Month_to_end_contract+gym_data$Avg_class_frequency_total+gym_data$Avg_class_frequency_current_month,
                 data = lung, model = TRUE)

plot(survfit(c), ylab = "Probability of Survival",
     xlab = "Time", col = c("red", "black", "black"))