install.packages("dplyr")
install_github("hadley/dplyr")
library(dplyr)

# select()
chicago<-readRDS("chicago.rds")
dim(chicago)
str(chicago)
names(chicago)[1:3]
head(subset)
subset<-select(chicago,city:dptp)
str(subset)
subset<-select(chicago,starts_with("d"))
str(subset)

# filter()
chic.f<-filter(chicago,pm25tmean2 > 30)
str(chic.f)
summary(chic.f$pm25tmean2)
chic.f<-filter(chicago,pm25tmean2>30&tmpd>80)
select(chic.f,date,tmpd,pm25tmean2)

#arrange
chicago<-arrange(chicago,date)
head(select(chicago,date,pm25tmean2),3)
tail(select(chicago,date,pm25tmean2),3)
chicago<-arrange(chicago,desc(date))


select(chicago, -(city:dptp))
i<-match("city",names(chicago))
j<-match("dptp",names(chicago))
head(chicago[,-(i:j)])3

# rename()
head(chicago[,1:5],3)
chicago<-rename(chicago,dewpoint=dptp,pm25=pm25tmean2)
head(chicago[,1:5],3)

# mutate()
chicago<-mutate(chicago,pm25detrend=pm25 - mean(pm25, na.rm = T))
head(chicago)
head(transmute(chicago,
               pm10detrend=pm10tmean2-mean(pm10tmean2,na.rm = T),
               o3detrend=o3tmean2-mean(o3tmean2,na.rm = T)))

# group_by()
chicago<-mutate(chicago,year=as.POSIXlt(date)$year+1900)
years<-group_by(chicago,year)
summarize(years,pm25=mean(pm25,na.rm = T),
          o3=max(o3tmean2,na.rm = T),
          no2=median(no2tmean2,na.rm = T))
qq<-quantile(chicago$pm25,seq(0,1,0.2),na.rm = T)
chicago<-mutate(chicago,pm25.quint=cut(pm25,qq))
quint<-group_by(chicago,pm25.quint)
summarize(quint,o3=mean(o3tmean2,na.rm = T),
          no2=mean(no2tmean2,na.rm = T))

#%>%
third(second(first(x)))
first(x)
mutate(chicago,pm25.quint=cut(pm25,qq))


