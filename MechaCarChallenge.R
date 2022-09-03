library(dplyr)
library(tidyverse)

# Deliverable 1
MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv")

lm(mpg ~ vehicle_length	+ vehicle_weight + spoiler_angle + ground_clearance +	AWD,, data = MechaCar_mpg)

summary(lm(mpg ~ vehicle_length	+ vehicle_weight + spoiler_angle + ground_clearance +	AWD,, data = MechaCar_mpg)) 


#Deliverable 2
Suspension_Coil <- read.csv(file="Suspension_Coil.csv")
total_summary = Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),
                                              Variance=var(PSI),SD = sd(PSI), .groups = "keep")
total_summary

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                              Median=median(PSI),Variance=var(PSI),SD = sd(PSI), .groups = "keep")
lot_summary

#Deliverable 3
t.test(Suspension_Coil$PSI, mu=1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)