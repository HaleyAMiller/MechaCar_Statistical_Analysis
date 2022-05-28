# MechaCar Statistical Analysis
The company AutosRUs is working on a new vehicle prototype, the MechaCar. However, due to some issues with its production, the executives have a requested a data analysis be performed to shed light on possible issues with the new car. Below are several statistical measurements performed to provide the executives with their requested analysis.
## Linear Regression to Predict MPG
The first analysis run was to interpret the relationship between miles per gallon (MPG) and five other metrics including vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. A linear regression was calculated to provide a mathematical representation of the relationship between these factors to answer the following questions.

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? 

Based on the values calculated by the summary() function, the only two variables that indicate a non-random amount of variance are vehicle length and ground clearance. The general metric used to indicate scientific significance is .05 and as the Pr values for both vehicle length and ground clearance are less than .05 (as observed in the image below), it can be concluded that both variables have a non-random amount of variance.

![MPG Summary](https://user-images.githubusercontent.com/99554642/170841065-654c634a-70a1-48ff-8701-b55e5c16d479.png)


* Is the slope of the linear model considered to be zero? Why or why not? 

The slope of the linear regression model is not considered to be zero. While two of the values are relatively close to zero (vehicle weight and spoiler angle), all of the values are greater than or less than zero. The image below shows the exact values of the slope for each variable.

![MPG lin regres](https://user-images.githubusercontent.com/99554642/170841072-37d39c92-5356-4733-84c7-f8f4f76e95c3.png)


* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 

The R-squared value for the linear model is .7149, which indicates a relatively high level of correlation between variables in the data set. The closer the R-squared value is to -1 or 1, the stronger the correlation between the variables. However, despite the high level of correlation, this linear model may not be including other variables that could affect the MPG of the MechaCar.


## Summary Statistics on Suspension Coils
The next analysis run was a calculation of summary statistics on suspension coils from multiple production lots. By looking at the suspension coil metrics from all lots combined and then all lots separately, any production issues can be identified and addressed. Below are the summary statistics for all of the lots combined.

![Total_Summary](https://user-images.githubusercontent.com/99554642/170841087-fd0b4cac-155e-463a-9ecc-3545f09abfad.png)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The variance calculated for all of the manufacturing lots was 62 pounds per square inch, which meets the standard for design specifications as it does not exceed 100. However, based on the variance calculated for the individual lots (pictured below), not all of the lots meet this standard. Lot 1 and Lot 2 both have a variance of less than 10 pounds per square inch, which is well within the design specs. Conversely, Lot 3 has a variance of 170 and is skewing the data for all of the manufacturers. Only looking at the overall statistics for all lots would not have shown the possible production issue with Lot 3.

![Lot_Summary](https://user-images.githubusercontent.com/99554642/170841093-956aecac-0903-4015-a566-6a66a3fd15f4.png)


## T-Tests on Suspension Coils
The last analysis run on MechaCar data was a series of t-tests to determine if all of the manufacturing lots combined and then all of the manufacturing lots individually are statistically different from the population mean of PSI of 1,500 pounds per square inch. The standard for rejecting the null hypothesis is typically based on a p-value < .05. The p-value for all manufacturing lots was 1, and as 1 > .05, the null hypothesis cannot be rejected for all of the lots combined. Lot 1 had a p-value of .00000000001568, meaning the null hypothesis can be rejected as .00000000001568 < .05. Similarly, Lot 2 had a p-value of .0005911, again meaning the null hypothesis can be rejected as .0005911 < .05. Lastly, Lot 3 had a p-value of .1589, indicating the null hypothesis cannot be rejected as .1589 > .05.

![Gen Pop TTest](https://user-images.githubusercontent.com/99554642/170841107-abda988a-9c70-4bef-a724-3f467cbe119e.png)

***All manufacturers***

![Lot1 TTest](https://user-images.githubusercontent.com/99554642/170841113-5db2eb50-2810-431e-934c-1286a4885444.png)

***Lot 1***

![Lot2 TTest](https://user-images.githubusercontent.com/99554642/170841116-dcd24a5c-a837-49d6-896e-080b36662657.png)

***Lot 2***

![Lot3 TTest](https://user-images.githubusercontent.com/99554642/170841123-ac07dd80-e6b0-4add-b32c-b535b15fcf7d.png)

***Lot 3***




## Study Design: MechaCar vs Competition
Now that the analyses have been performed for the MechaCar prototype, AutosRUs now wants to evaluate MechaCar’s performance against vehicles from competing manufacturers.  The first step in this process is to design an analysis to address the needs of AutosRUs.

*	What metric or metrics are you going to test?

To compare MechaCar with similar vehicles, we are going to test safety ratings, vehicle length, vehicle weight, and number of air bags to determine how these metrics relate to the safety ratings of MechaCar and the other vehicles.

*	What is the null hypothesis or alternative hypothesis?

Null Hypothesis: Safety ratings do not have a scientifically significant correlation to vehicle length, vehicle weight, and number of air bags.
Alternative Hypothesis: If vehicle length, vehicle weight, and number of air bags are changed, then safety ratings will also change.

*	What statistical test would you use to test the hypothesis? And why?

The ideal statistical test to measure the relationship between these variables is a linear regression and corresponding statistical summary. This test will show if there is a correlation between the variables being tested (safety ratings, vehicle length, vehicle weight, and number of air bags).

*	What data is needed to run the statistical test?

In order to run this analysis, at lest 40 data points are needed between MechaCar and competitors. More specifically, at least 40 data points will be need for vehicle length, vehicle weight, and number of air bags to determine the r-squared value from a sufficient population.
