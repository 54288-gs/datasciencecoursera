#load file for Quiz 1, week 1
x<-read.csv("hw1_data.csv")

#assign parameter column-wise
Ozone<-x[["Ozone"]]
Solar<-x[["Solar.R"]]
Wind<-x[["Wind"]]
Temp<-x[["Temp"]]
Month<-x[["Month"]]
Day<-x[["Day"]]

#identify NA in each column
badOzone<-is.na(Ozone)
badSolar<-is.na(Solar)
badWind<-is.na(Wind)
badTemp<-is.na(Temp)
badMonth<-is.na(Month)
badDay<-is.na(Day)

#Calculate mean of Parameters
meanOzone<-mean(Ozone[!badOzone])
meanOzone
meanTemp<-mean(Temp[!badTemp])
meanTemp
meanSolar<-mean(Solar[!badSolar])
meanSolar

#Filter Ozone > 31 and Temp > 90 to answer question 18
good<-complete.cases(Ozone,Temp,Solar)
completeOzone<-Ozone[good]
completeTemp<-Temp[good]
completeSolar<-Solar[good]
filterOzoneTemp<-completeOzone > 31 & completeTemp > 90
filteredSolar<-completeSolar[filterOzoneTemp]
meanfilterSolar<-mean(filteredSolar)
meanfilterSolar

#Calculate mean of Temp for month 6 to answer question 19
June<- Month == 6
JuneTemp<-Temp[June]
mean(JuneTemp)

#Get maximum Ozone value for month 5 to answer question 20
May<-Month==5
MayOzone<-Ozone[May]
badMayOzone<-is.na(MayOzone)
completeMayOzone<-MayOzone[!badMayOzone]
max(completeMayOzone)