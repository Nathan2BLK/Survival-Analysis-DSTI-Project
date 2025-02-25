library(tidyverse)
setwd('C:/Users/joelb/Desktop/survival_analysis')
gym_data <- read_csv('gym_churn_us.csv')

res_cox <- coxph(formula = Surv(Lifetime, Churn) ~ gender + Near_Location + Partner + Promo_friends + Phone + Contract_period + Group_visits + Age + Avg_additional_charges_total + Month_to_end_contract + Avg_class_frequency_total + Avg_class_frequency_current_month, data =  gym_data)
summary(res_cox)
ggsurvplot(survfit(res_cox, data = gym_data), color = "#2E9FDF",ggtheme = theme_minimal())
