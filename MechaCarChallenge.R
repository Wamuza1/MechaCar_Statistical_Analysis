
# Deliverable 1 Linear Regression to Predict MPG
# Import library
library(dplyr)

# import and Read csv file
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

#Determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))





# Deliverable 2: Create Visualizations for the Trip
# import and Read csv file
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 


# Total_summary dataframe using the summarize().
total_summary <- suspension_table %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI))

lot_summary <- suspension_table  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                         Median=median(PSI),
                                                                         Variance=var(PSI),
                                                                         SD=sd(PSI))


# Deliverable 3: T-Tests on Suspension Coils

t.test(suspension_table$PSI, mu = 1500) 

lot1 <- subset(suspension_table, Manufacturing_Lot=='Lot1') 
t.test(lot1$PSI,mu=1500)

lot2 <- subset(suspension_table, Manufacturing_Lot=='Lot2')  
t.test(lot2$PSI,mu=1500)

lot3 <- subset(suspension_table, Manufacturing_Lot=='Lot3')  
t.test(lot3$PSI,mu=1500)



# log10 did not used because we did not skewed and smoothing.


                                                                        