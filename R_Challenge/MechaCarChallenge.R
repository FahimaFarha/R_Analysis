#Set working directory and install necessary packages
install.packages("tidyverse")
library(tidyverse)

#Read the csv
mecha_mpg <- read.csv("MechaCar_mpg.csv")

lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = mecha_mpg) #making mult linear regression model
# Create summary statistics
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = mecha_mpg)) # generate summary statisctics of mult linear regression


#Read csv
suspen_coil <- read.csv("Suspension_Coil.csv")

#Generate summary table
suspen_sum_psi <- suspen_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                                                            Variance=var(PSI), SD=sd(PSI))
#t-test
t.test(suspen_coil$PSI, mu=1500)
