library(ggplot2)
library(tidyverse)
library(FSA)


ggplot(data = X2018_NorthFork_fish, mapping = aes(x = length)) +
  geom_histogram(binwidth = 30, color = "white") +
  theme_classic()

#mark recapture data ! Population estimates for 2018, 2020, 2024

#2018
mark18<-mrClosed(249,242,51,method="Chapman") 
summary(mark18,incl.SE=TRUE)
confint(mark18,verbose=TRUE)
#2020
mark20<-mrClosed(117,286,55,method="Chapman") 
summary(mark20,incl.SE=TRUE)
confint(mark20,verbose=TRUE)
#2024 BNT
mark24<-mrClosed(24,53,3,method="Chapman") 
summary(mark24,incl.SE=TRUE)
confint(mark24,verbose=TRUE)

png("population_density.png",width=3,height=2,units="in",res=300)
ggplot(population_density, aes(x = year, y = pop)) +
  geom_point(size = 2) +
  geom_errorbar(aes(ymin = lci, ymax = uci), width = 0.2) +
  labs(x = "Year", y = "Brown Trout Per 100 m") +
  theme_classic()
dev.off()

#length freq histogram
bnt18 <- subset(X2018_NorthFork_fish,species=="BNT")
range(bnt18$length) #76-630
bnt20 <- subset(X2020_NorthFork_fish,species=="BNT")
bnt23 <- subset(X2023_NorthFork_fish,species=="BNT")
bnt24 <- subset(X2024_NorthFork_fish,species=="BNT")
range(bnt20$length) #67-401
range(bnt23$length) #95-349
range(bnt24$length) #84-381

png("2018.png",width=5,height=3,units="in",res=150)
hist(~length, data=bnt18, 
     breaks=seq(60,630,10), ylim=c(0,70))
title(main="Brown Trout 2018")
dev.off()
png("2020.png",width=5,height=3,units="in",res=150)
hist(~length, data=bnt20, 
     breaks=seq(60,630,10), ylim=c(0,70))
title(main="Brown Trout 2020")
dev.off()
png("2023.png",width=5,height=3,units="in",res=150)
hist(~length, data=bnt23, 
     breaks=seq(60,630,10), ylim=c(0,70))
title(main="Brown Trout 2023")
dev.off()
png("2024.png",width=5,height=3,units="in",res=150)
hist(~length, data=bnt24, 
     breaks=seq(60,630,10), ylim=c(0,70))
title(main="Brown Trout 2024")
dev.off()

#waterflow and fish pops correlation

shapiro.test(flowxfish$estpopulation)
cor.test(flowxfish$estpopulation, flowxfish$Drydays,  method = "spearman")
#rho = -0.912, suggesting strong negative correlation

png("correlationv2.png",width=3,height=3,units="in",res=300)
ggplot(data = flowxfish, mapping = aes(x = Drydays, y = estpopulation)) + 
  geom_point()+
  theme_classic()+
  labs(x="Annual Days of Low Flow (< 1 cfs)") +
  labs(y="Estimated Abundance/100 m")
dev.off()

#dry days vs CPUE
ggplot(data = CPUE, mapping = aes(x = drydays, y = avg_cpue)) + 
  geom_point()+
  theme_classic() +
  labs(x="Annual Days of Low Flow (< 1 cfs)") +
  labs(y="CPUE")

#edit drydays chart
dd<-read.csv("DryDays.csv")
ggplot(dd,aes(x=Year,y=Days))+geom_line() +
  geom_point() +
  xlab("Year") + ylab("Days Below 1 CFS") + theme_classic()
ggsave("DryDaysv2.png")

