library(dplyr)
#Deliverable 1
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

#Deliverable 2
Suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#Deliverable 3
t.test(Suspension_table$PSI,mu=mean(Suspension_table$PSI))

t.test(subset(Suspension_table$PSI,Suspension_table$Manufacturing_Lot=="Lot1"),mu=mean(Suspension_table$PSI))

t.test(subset(Suspension_table$PSI,Suspension_table$Manufacturing_Lot=="Lot2"),mu=mean(Suspension_table$PSI))

t.test(subset(Suspension_table$PSI,Suspension_table$Manufacturing_Lot=="Lot3"),mu=mean(Suspension_table$PSI))