library(dataRetrieval) #loads the USGS dataRetrieval package
library(tidyverse) #loads ggplot2 and dplyr, among other packages
siteNo <- "13055250" #13055250 is the USGS retrieval code for Sugar City, ID
pCode <- "00060" #retrieval code for daily discharge data - see https://help.waterdata.usgs.gov/code/stat_cd_nm_query?stat_nm_cd=%25&fmt=html for other codes
start.date <- "2016-01-01"
end.date <- "2024-12-31"

NFTetonDischarge <- readNWISdv(siteNumbers = siteNo,
                       parameterCd = pCode,
                       startDate = start.date,
                       endDate = end.date)
  
start.date16 <- "2016-07-01"
end.date16 <- "2016-10-31"
start.date17 <- "2017-07-01"
end.date17 <- "2017-10-31"
start.date18 <- "2018-07-01"
end.date18 <- "2018-10-31"
start.date19 <- "2019-07-01"
end.date19 <- "2019-10-31"
start.date20 <- "2020-07-01"
end.date20 <- "2020-10-31"
start.date21 <- "2021-07-01"
end.date21 <- "2021-10-31"
start.date22 <- "2022-07-01"
end.date22 <- "2022-10-31"
start.date23 <- "2023-07-01"
end.date23 <- "2023-10-31"
start.date24 <- "2024-07-01"
end.date24 <- "2024-10-31"
d16 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date16,
                               endDate = end.date16)
d17 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date17,
                               endDate = end.date17)
d18 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date18,
                               endDate = end.date18)
d19 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date19,
                               endDate = end.date19)
d20 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date20,
                               endDate = end.date20)
d21 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date21,
                               endDate = end.date21)
d22 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date22,
                               endDate = end.date22)
d23 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date23,
                               endDate = end.date23)
d24 <- readNWISdv(siteNumbers = siteNo,
                               parameterCd = pCode,
                               startDate = start.date24,
                               endDate = end.date24)

write.csv(NFTetonDischarge, file="DischargeData1.csv") #saves CSV file of the requested data to the .RData folder of the folder that the workspace is saved in
write.csv(d16, file="2016LowDischarge.csv")
write.csv(d17, file="2017LowDischarge.csv")
write.csv(d18, file="2018LowDischarge.csv")
write.csv(d19, file="2019LowDischarge.csv")
write.csv(d20, file="2020LowDischarge.csv")
write.csv(d21, file="2021LowDischarge.csv")
write.csv(d22, file="2022LowDischarge.csv")
write.csv(d23, file="2023LowDischarge.csv")
write.csv(d24, file="2024LowDischarge.csv")
ggplot(d16, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Discharge Data, 2016") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2016Discharge.png")
ggplot(d17, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Discharge Data, 2017") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2017Discharge.png")
ggplot(d18, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Discharge Data, 2018") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2018Discharge.png")
ggplot(d19, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Discharge Data, 2019") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2019Discharge.png")
ggplot(d20, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Discharge Data, 2020") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2020Discharge.png")
ggplot(d21, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Discharge Data, 2021") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2021Discharge.png")
ggplot(d22, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Discharge Data, 2022") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2022Discharge.png")
ggplot(d23, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Discharge Data, 2023") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2023Discharge.png")
ggplot(d24, aes(x = Date, y = X_00060_00003)) +
  geom_line()+ ggtitle("Study Site Summer Discharge Data, 2024") +
  xlab("Date") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("2024Discharge.png")
ggplot(NFTetonDischarge, aes(x = Date, y = X_00060_00003)) +
  geom_line() + scale_y_continuous(trans='log2')+ ggtitle("Study Site Discharge Data, 2016-2024") +
  xlab("Year") + ylab("Mean Daily Discharge (cfs)") + theme_classic()
ggsave("NFTetonDischarge.png")
dd<-read.csv("DryDays.csv")
ggplot(dd,aes(x=Year,y=Days))+geom_line()+ ggtitle("Number of Annual Days Below 1 CFS, 2016-2024") +
  xlab("Year") + ylab("Days Below 1 CFS") + theme_classic()
ggsave("DryDays.png")
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


ggplot(data = populations, mapping = aes(x = year)) +
  geom_boxplot()+
  theme_classic()

png("population_estimatesv2.png",width=3,height=2,units="in",res=300)
ggplot(populations, aes(x = year, y = pop)) +
  geom_point(size = 2) +
  geom_errorbar(aes(ymin = lci, ymax = uci), width = 0.2) +
  labs(x = "Year", y = "Abundance") +
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