# Data Visualization
#What is GGPLOT
#The Grammar of Graphics by Wilkinson 2005
install.packages("ggplot2")
install.packages("ggfortify")
install.packages("plotly")

#Base graphics
View(msleep)
hist(sleep_total)

#Ggplot graphics
library(ggplot2)
ggplot(msleep, aes(x = sleep_total)) +
  geom_histogram()


p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p + geom_hline(yintercept = 20)

#scatter plot
View(cars)
plot(cars)
lines(lowess(cars)
attach(cars)
par(mfrow=c(2,2))
plot(speed,dist) 

par(mfrow=c(1,1))
plot(speed,dist);par(col="red")
old_par<-par()
par(old_par)
plot(speed,dist,pch=16,col=2,xlab = "dist",ylab = "speed",main = "PLOT",sub = "source:kashdjka")

## 2
View(ChickWeight)
attach(ChickWeight)
plot(weight)
plot(time)
plot(Diet)

## 3
library(ggplot2)
data(mpg, package="ggplot2")
mpg <- read.csv("http://goo.gl/uEeRGu")
dim(mpg)
# Scatterplot
theme_set(theme_bw(base_size = 10))  # pre-set the bw theme.
g <- ggplot(mpg, aes(cty, hwy))
g + geom_jitter(width = 0.5, size=1) +
  labs(subtitle="mpg: city vs highway mileage", 
       y="highway", 
       x="city", 
       title="Correlation between hwy and cty", caption = "source:World bank")

## 4
theme_set(theme_bw())  

data("mtcars")  # load data
attach(mtcars)
`car name` <- rownames(mtcars)  # create new column for car names
mpg_z <- round((mtcars$mpg - mean(mtcars$mpg))/sd(mtcars$mpg), 2)  # compute normalized mpg
mpg_type <- ifelse(mpg_z < 0, "below", "above")  # above / below avg flag
mtcars <- mtcars[order(mpg_z), ]  # sort
`car name` <- factor(`car name`, levels = `car name`)  # convert to factor to retain sorted order in plot.

# Diverging Barcharts
ggplot(mtcars, aes(x=`car name`, y=mpg_z, label=mpg_z)) + 
  geom_bar(stat='identity', aes(fill=mpg_type), width=.5)  +
  scale_fill_manual(name="Mileage", 
                    labels = c("Above Average", "Below Average"), 
                    values = c("above"="#00ba38", "below"="#f8766d")) + 
  labs(subtitle="Normalised mileage from 'mtcars'", 
       title= "Diverging Bars") + 
  coord_flip()

##5    Pie1
library(ggplot2)
theme_set(theme_classic(base_size = 5)
df <- as.data.frame(table(mpg$class))
colnames(df) <- c("class", "freq")
pie <- ggplot(df, aes(x = "a", y=freq, fill = factor(class))) + 
  geom_bar(width = 1, stat = "identity") +
  theme(axis.line = element_blank()
        plot.title = element_text(hjust=0.2)) + 
  labs(fill="class", 
       x="NULL", 
       y="NULL", 
       title="Pie Chart of class", 
       caption="Source: mpg")

pie + coord_polar(theta = "y", start=0)

##6    Pie2
A=c(3,7,9,1,2)
pie(A)
pie(A , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E"))
pie(A , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E") , edges=10)
pie(A , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E") , radius=0.8)
pie(A , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E") , radius=0.2)
pie(A , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E") , clockwise = FALSE)
pie(A , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E") , clockwise = TRUE)
pie(A , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E") , density=2 , angle=c(45,60,30,10,0))
pie(A , labels = c("Gr-A","Gr-B","Gr-C","Gr-D","Gr-E")  , border="yellow",radius=0.4,clockwise=T)


##7  Histogram
install.packages("plotly")
library(plotly)
graph1=plot_ly(x = rnorm(100), type = "histogram")
graph1
hist(x = rnorm(500),breaks = 5,col = 2,main = "Histogram",border = 1)

##8  Bar chart
attach(mpg)
freqtable <- table(manufacturer)
df <- as.data.frame.table(freqtable)
head(df)
library(ggplot2)
theme_set(theme_classic())
g <- ggplot(df, aes(class, freq))
g + geom_bar(stat="identity", width = 0.5, fill="tomato2") + 
  labs(title="Bar Chart", 
       subtitle="Manufacturer of vehicles", 
       caption="Source: Frequency of Manufacturers from 'mpg' dataset") +
  theme(axis.text.x = element_text(angle=10, vjust=0.2,face = "bold",size = 10),axis.text.y = element_text(angle = 45,face = "bold"))

##9  Time series
library(ggplot2)
install.packages("ggfortify")
library(ggfortify)
theme_set(theme_classic(base_size = 10)
autoplot(AirPassengers) + 
  labs(title="AirPassengers",caption = "timeseries") + 
  theme(plot.title = element_text(vjust=0.2,hjust=0.5,colour = 6,face = "italic"),axis.text.x = element_text(angle = 45,size = 15,colour = 2),axis.text.y = element_text(angle = 45,size = 15,color = 2))






##Sources
http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html
https://github.com/rstudio/cheatsheets/blob/master/data-visualization-2.1.pdf
https://www.statmethods.net/advgraphs/parameters.html
https://www.r-graph-gallery.com
https://ggplot2.tidyverse.org/