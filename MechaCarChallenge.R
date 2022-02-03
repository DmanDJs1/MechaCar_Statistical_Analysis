#Deliverable #1

#load
library(dplyr)

#Read in the MechaCar_mpg.csv file as a dataframe.
library(tidyverse)
mecha_mpg_regression <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg_regression)

#Determine the p-value and the r-squared value for the linear regression model using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg_regression))


# Deliverable 2

#Download the Suspension_Coil.csv

#Import and read in the Suspension_Coil.csv file as a table.
susp_coil <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- susp_coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')

#Creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation 
lot_summary <- susp_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')

# Deliverable 3

# Using the t.test() function to determine if the PSI across all manufacturing lots isstatistically different from the population mean 
t.test(susp_coil$PSI,mu=1500)

# Using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
#Lot 1
t.test(subset(susp_coil, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
#Lot 2
t.test(subset(susp_coil, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
#Lot 3
t.test(subset(susp_coil, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
