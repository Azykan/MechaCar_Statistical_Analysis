library(dplyr)
MechaCar_mpg <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) 
Suspension_Coil <-read.csv(file='./Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <-Suspension_Coil %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <-Suspension_Coil %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
#All lots
t.test(Suspension_Coil$PSI,mu=1500)
#Lot 1
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
#Lot 2
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
#Lot 3
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

