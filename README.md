# MechaCar_Statistical_Analysis

## Overview:

This project was designed for us to analyze a car manufacturing data (MechaCar) set using  the program R to determine the following:

1)	Identify which variables in the dataset predict the mpg of MechaCar prototypes by performing multiple linear regression analysis  
2)	Summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3)	Perform t-tests to determine if the manufacturing lots are statistically different from the mean population of our dataset
4)	Vehicle performance of the MechaCar vehicles against vehicles from other manufacturers by designing and comparing a statistical study

## Results showing Linear Regression to Predict MPG:

1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Add pic 1 here ![image]( ) part B
Add pic 1 here ![image](https://github.com/DmanDJs1/bikesharing/blob/main/Images/1.jpg?raw=true) Part 1

a)	vehicle weight(0.0776)
b)	spoiler angle(0.3069)
c)	AWD(0.1852)

2) Is the slope of the linear model considered to be zero? Why or why not?

Add pic 1 here ![image]( )

As per the above image, the p-value of the linear model is 5.35e-11 which is far less than the assumed significance level of 0.05%. 
The slope of the linear model is therefore not considered to be zero because the p-value is less than 0.05. 
This gives us sufficient evidence to ultimately reject the null hypothesis.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared value for this linear model was found to be 0.7149. This predicts that approximately 71% of mpg predictions will be expected to be correct. 
It also concludes that this linear model predicts mpg of MechaCar prototypes quite effective.


## Summary Statistics on Suspension Coils

1) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Add pic4 here ![image]( )

As per the image above, the summary of all manufactoring lots shows the variance VAR_PSI is 62.29356, 
which is below the MechaCar suspension coils design specifications requirements of not exceeding the 100 pounds per square inch threshold. 
Overall, the shown population meets the PSI variance requirements.

## T-Tests on Suspension Coils

The T test results reveals that the p value for all the lots is 0.06 which is above the assumed significant level of 0.05. The information tells us that 
there is no sufficient evidence to reject the null hypothesis of the analysis. 
This leads us to conclude that the suspension coils dataset 
represents the population mean statistically.

The following picture shows in the order the following:
1) T-test on suspension coil
2) T-test on suspension coil for Lot 1
3) T-test on suspension coil for Lot 2
4) T-test on suspension coil for Lot 3

Add pic3 here ![image]( )

## Study Design: MechaCar vs Competition

1) What metric or metrics are you going to test?


The metrics I would test would be the following: 1) Safety Rating 2) Engine Type 3) MPG 4) Insurance Costs

The analysis will test these metrics in both the Mechacar and vehicles from other manufacturers to determine 
whether any statistically significant differences exist. 



2) What is the null hypothesis or alternative hypothesis?


Null Hypothesis: Among the metrics tested, MechaCar is the most cost-effective car based on fuel efficiency compared to vehicles from other manufacturers.
Alternative hypothesis: MechaCar is not the most cost-effective car based on fuel efficiency compared to vehicles from other manufacturers.


3) What statistical test would you use to test the hypothesis? And why?


Since I'm looking to test more than one independent variable, 
I would suggest performing the multiple linear regression model. 
We would determine the coorelation between cost value vs. the other metrics mentioned above (1-4).


4) What data is needed to run the statistical test?

Data set that is needed is MPG, Safety Rating, Engine Type, and average Insurance Costs.



