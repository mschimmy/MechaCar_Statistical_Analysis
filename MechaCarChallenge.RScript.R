# MechaCarChallenge.RScript

# Deliverable 1
# use the library() function to load the dplyr package
library(dplyr)
install.packages("tidyverse")

# import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read_csv("~/Desktop/Analysis_Projects/R_Analysis/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

# perform multiple linear regression using the lm() function
# pass in all six variables, and add the dataframe you created as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

# using the summary() function, determine the p-value and the r-squared
# value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Deliverable 2
# import and read in the Suspension_Coil.csv file as a table
Suspension_Coil <- read_csv("~/Desktop/Analysis_Projects/R_Analysis/MechaCar_Statistical_Analysis/Suspension_Coil.csv")

# create a total_summary dataframe using the summarize() function to get
# the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- summarize(Suspension_Coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# create a lot_summary dataframe using the group_by() and the summarize() functions to group each
# manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3
# use the t.test() function to determine if the PSI across all manufacturing lots is
# statistically different from the population mean of 1,500 pounds per square inch
t.test((Suspension_Coil$PSI),mu=1500)

# write three R.Scripts using the t.test() function and its subset() argument to determine if the
# PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)

