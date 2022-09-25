# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
![Multiple_Linear_Regression.png](https://github.com/mschimmy/MechaCar_Statistical_Analysis/blob/main/images/Multiple_Linear_Regression.png)
![MLR_p-value_r-squared_value.png](https://github.com/mschimmy/MechaCar_Statistical_Analysis/blob/main/images/MLR_p-value_r-squared_value.png)

The following equation is the linear regression model for the MechaCars_mpg dataset:
mpg = 6.267(vehicle_length) + 0.062(vehicle_weight) + 0.931(spoiler_angle) + 3.546(ground_clearance) + -3.411(AWD)

Which variables/coefficients provided a non-random amount of variancse to the mpg values in the dataset?
- In the summary output of the multiple linear regression model, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to the model, vehicle length and ground clearance (as well as the intercept) are statistically unlikely to provide random amounts of variance to the linear model, and have a significant impact on miles per gallon (mpg).
Is the slope of the linear model considered to be zero? Why or why not?
- The slope of the linear model is not considered to be zero because the p-value of the multiple linear regression model is 5.35e-11. Therefore, there is sufficient evidence to reject the null hypothesis.
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- The model sufficiently predicts the dependent variable, miles per gallon (mpg) of MechaCar prototypes. This is because the r-sqaured value is 0.7149, which indicates a strong positive correlation between the variables. This means that approximately 71% of the variability of the dependent variable (miles per gallon) is explained using this linear model.


## Summary Statistics on Suspension Coils
![Total_summary](https://github.com/mschimmy/MechaCar_Statistical_Analysis/blob/main/images/Total_summary.png)
![Lot_summary](https://github.com/mschimmy/MechaCar_Statistical_Analysis/blob/main/images/Lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variabnce of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- At first look, the  variance of all suspension coils manufactored by MechaCar, regarless of lot,  do not exceed the 100 pounds per square inch design specification. But upon further investigation, when the suspension coils are grouped by their manufactoring lots, it is clear that suspension coils from manufacturing lot three do not meet this design specification as the variance of this group is 170.286 pounds.


## T-Test on Suspension Coils
![Total_t-test](https://github.com/mschimmy/MechaCar_Statistical_Analysis/blob/main/images/Total_t-test.png)
![Lot1_t-test](https://github.com/mschimmy/MechaCar_Statistical_Analysis/blob/main/images/Lot1_t-test.png)
![Lot2_t-test](https://github.com/mschimmy/MechaCar_Statistical_Analysis/blob/main/images/Lot2_t-test.png)
![Lot3_t-test](https://github.com/mschimmy/MechaCar_Statistical_Analysis/blob/main/images/Lot3_t-test.png)

The one-sample t-test is used to determinfe whether there is a statistical difference between the means of a sample dataset and a hypothesized population dataset. For the purpose of this analysis, 1,500 wis the mean for the hypothesized population dataset, and the significance level is p=0.05 . If the p-value of the sample dataset is lower than the significance level (p<0.05), there would be sufficient evidence to reject the null hypothesis and state that the two means are statistically different.

According to the t-test that compares the mean of the pounds per square inch (PSI) across all manufacturing lots, there is insufficient evidence to reject the null hypothesis. The p-value for all manufacturing lots is 0.06, which is more than the significance level of 0.05. The two means are not statistically different.

The t-test p-value for coils in manufacturing lot 1 is 1, which is much more than the significance level of 0.05. Again, there is insufficient evidence to reject the null hypothesis, and the two means are not statistically different.

The t-test p-value for suspension coils in manufacturing lot 2 is 0.61, which indicates that there is not sufficient evidence to reject the null hypothesis and the two means are not statistically different.

The last t-test for suspension coils in manufacturing lot 3 gives a p-value of 0.04. There is sufficient evidence to reject the null hypothesis and state that the two means are statistically different.


## Sudy Design: MechaCar vs. Competition
The following section describes a statistical study that would quantify how MechaCar performs against its competitors.

What metric or metrics will be tested?
-The test metric is the suspension coil's pounds per square inch (PSI) manufactured by MechaCar and its competitor.

What is the null hypothesis or alternative hypothesis?
- The null hypothesis is that 
there is no statistical difference between the two observed sample means for suspension coil's pounds per square-inch manufactured by each company. The chosen significance level is be p = 0.05. If the calculated p-value is smaller than the significance level (p-value < 0.05), then there is sufficient statistical evidence that the null hypothesis is not true and would be rejected. 

What statistical test would be used to test the hypothesis? Why?
- A two-sample t-test would be used to compare the distribution means of two samamples, MechaCar's suspension coil PSI data and its competitor's suspension coil PSI data. This test will determine if the two sample means are statistically equal or not.

What data is needed to run the statistical test?
- The data needed to run the statistical test would be dichotomous, sample A (MechaCar) versus sample B (its competitor). The sample data would be numerical and continuous, and each sample data will need to be selected randomly from its population data. The sample input data must be considered normally distributed and each sample size must be reasonable large. The two samples must be independent.
