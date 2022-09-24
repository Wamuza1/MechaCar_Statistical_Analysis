# MechaCar_Statistical_Analysis Statistical analysis by using R and with dplyr library on RStudio. 

# Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has a data analytics team to review the production data for insights that may help the manufacturing team.

In this project, we helped the data analytics team do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

# Linear Regression to Predict MPG.

![summary](https://user-images.githubusercontent.com/92646311/180630437-b72f1f3f-7316-4013-8049-56d69f39dd46.png)


- The vehicle_length, and vehicle_ground clearance variables/coefficients provided a non random amount of variance to the mpg values in the dataset.They have an  impact on miles per gallon on the MechaCar prototype. Moreover, other variables such as:  vehicle weight, spoiler angle, and AWD  indicate a random amount of variance. 

- The p-Value is 5.35e-11, which is  smaller than the assumed significance level of 0.05%. There is sufficient evidence to reject our null hypothesis, which indcates The slope of the linear model considered to be not zero.

- This linear model has a r-squared value of 0.7149, which means that 71% of all mpg predictions will be determined by this linear model predict mpg of MechaCar prototypes effectively.

# Create Visualizations for the Trip

![total-summary](https://user-images.githubusercontent.com/92646311/180630621-f35296ff-db8d-4c42-b683-4514b633b2ea.png)

![lot_summary](https://user-images.githubusercontent.com/92646311/180630627-e38a3c4d-fcd1-4f61-9905-d36b7108c759.png)

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- Total summary variance is approximately 62.29 PSI which meet the design specification.
- lots individuals, the first two lotas meet the design specification at a varaince of approximately 0.98(PSI) and 7.47(PSI), but the  lot3 showing larger variance in performance and consistency, with a variance of 170.29 PSI and exceeding the design specification. Therefore, the manufacturing team should work within lots1 and lot2.


#  T-Tests on Suspension Coils.
Using our knowledge of R, we performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

** All lots

![all_lots](https://user-images.githubusercontent.com/92646311/180630684-147fe8d9-7e3a-4b40-9e51-d5a58e9f1a69.png)

 The mean of the sample is 1498.78, and the p-Value is 0.06,  which is higher than the common significance level of 0.05. Therefore, there is NOT enough evidence to support rejecting the null hypothesis.

** Lot1

![lot1](https://user-images.githubusercontent.com/92646311/180630698-30f2446c-8d9f-4222-b56a-d74b54081b5d.png)

The mean of the sample is 1500, and the p-Value is 1,  which is higher than the common significance level of 0.05. Therefore, there is not enough evidence to support rejecting the null hypothesis.

** Lot2

![lot2](https://user-images.githubusercontent.com/92646311/180630718-e9618f94-42b0-4f93-a854-808e329bf622.png)

The mean of the sample is 1500.2, and the p-Value is 0.6072,  which is higher than the common significance level of 0.05. Therefore, the null hypothesis cannot be rejected.

** Lot3

![lot3](https://user-images.githubusercontent.com/92646311/180630725-5a4ecb38-7bad-48a2-b205-e915cc486909.png)

 The sample mean is 1496.14, and the p-Value is 0.04, which is lower than the common significance level of 0.05. There is sufficient statistical evidence to reject  the null hypothesis and there is a statistical difference between Lot 3 and the population mean.
## Summary T-Tests on Suspension Coils

# Deliverable 4: Design a Study Comparing the MechaCar to the Competition.
## Study Design: MechaCar vs Competition

** The metrics I want to test are cost and vehicle safty features.
** Data for the statistical test across all major manufacturers for past 2 years.
- cost

Selling cost (Dependent variable)

-  Vehical safty features(Independent variable)

Partially Automated Safety Features
Lane Keeping Assist
Adaptive Cruise Control
Traffic Jam Assist

** Hypothesis: Null and Alternative
- Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of vehicle safty features.
- Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on its  performance of vehicle safty features.

** Statistical test
Multi-linear regression, box plot grouped by saftry features, and t-test after collecting data from  all major manufacturers competitor vehicles. Our t-test will be comparing the population mean for each metric.
