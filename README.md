# MechaCar_Statistical_Analysis
 AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.  insights that may help the manufacturing team.

Multiple linear regression analysis will identify which variables in the dataset predict the mpg of MechaCar prototypes.
Collected summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
Ran t-tests to determine if the manufacturing lots are statistically different from the mean population.
Designed a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

- Data Source: MechaCar_mpg.csv and Suspension_Coil.csv
- Data Tools: tidyverse, dplyr, ggplot2 and MechaCarChallenge.RScript.
- Software: RStudio and R

## Linear Regression to Predict MPG.  Deliverable 1:
![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/97486216/174467468-d274ef22-57a6-4bfe-a290-77f402c895c8.jpg)

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
From the dataset results it can be said that the following variables/coefficients provided a non-random amount of variance to the mpg values:
The vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.
* vehicle weight(0.0776)
* spoiler angle(0.3069)
* AWD(All Wheel Drive)(0.1852)

#### Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero. The p-Value (probability values) is 5.35e-11, smaller than the signif. code level of 0.05%.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The linear model predicts that approximatley 71% of all mpg predictions will be correct with the r-squared value showing 0.7149.
## Summary Statistics on Suspension Coils.  Deliverable 2:
Activate the downloaded Suspension_Coil.csv file, and place it in the active directory for your R session.
Import and read in the Suspension_Coil.csv in the  MechaCarChallenge.RScript file as a table.
Write an RScript total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

* total_summary
> total_summary <-Suspension_Coil %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
* lot_summary
> lot_summary <-Suspension_Coil %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
![All tables](https://user-images.githubusercontent.com/97486216/174505254-78790cca-4329-44f8-af7a-f9de4f89bc83.jpg)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
#### Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
According to the calculations, Lot 1's variance is 0.98 which does meet the design specifications for the MechaCar suspension coils variance not exceeding 100 pounds per sq. in.
However lot 2's variance is at 7.5 and lot 3's Variance is at 170.3, which niether meet the requirements.
## T-Tests on Suspension Coils. Deliverable 3:
Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
Write three more RScripts in using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
- #All lots
> t.test(Suspension_Coil$PSI,mu=1500)

	One Sample t-test

data:  Suspension_Coil$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
- #Lot 1
> t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

  One Sample t-test

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
- #Lot 2
> t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

	One Sample t-test

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
- #Lot 3
> t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

	One Sample t-test

data:  subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
## Study Design: MechaCar vs Competition. Deliverable 4:
A Short description of a statistical study that can quantify how the MechaCar performs against the competition. 
Focusing on the interest of a consumer:
- The metrics to be tested:
* Over-all cost and maintenance cost
* fuel efficiency
* horse power
* saftey rating
#### What is the null hypothesis or alternative hypothesis?
The null hypothesis (Ho) is that the mean of the safety rating is zero. 
The alternative hypothesis (Ha) is that the mean of the safety rating is not zero.
#### What statistical test would you use to test the hypothesis? And why?
 Using a multiple linear regression statistical summary would determine the factors that have the highest correlation/predictability with the variables that impact the safety ratings for MechaCar and their competitors.
#### What data is needed to run the statistical test?
 Providing evidence that the Ha is true would predict that the MechaCar protype provides consistently better results. A series of 5 tests including side, seats, head restraints, small front overlap, and moderate front overlap against MechaCar and their competitor would need to be collected.
