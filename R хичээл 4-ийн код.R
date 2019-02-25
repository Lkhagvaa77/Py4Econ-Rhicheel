
# DATA FRAME --------------------------------------------------------------

# Create the data frame.
df1 <- data.frame(
  id = c (1:5), 
  name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(df1) 
str(df1)
summary(df1)

#Extract data from data frame
result <- data.frame(df1$name,df1$salary)
print(result)
attach(df1)
.
ur_dun<-data.frame(name,salary)
ur_dun

#Extract first two rows
result <- df1[1:2,]
result2<- df1[,1:2];result2
print(result)

# Extract 3rd and 5th row with 2nd and 4th column.
result <- df1[c(3,5),c(2,4)]
print(result)

#EXPAND DATA FRAME
## Add the "dept" coulmn.
dept <- c("IT","Operations","IT","HR","Finance")
v <- data.frame(df1,dept)
v


#Simplest data frame example1
x<- data.frame("SN"=1:2, "Age"=c(21,15), "Name"=c('John','Dora'))
x
str(x)
typeof(x)
class(x)

#Accessing like a list
x["Name"]
x$Name
x[["Name"]]
x[[3]]

#Accessing like a matrix
View(trees)
attach(trees)
str(trees)
head(trees,n=20)

trees[2:3,]   #select 2nd and 3rt row
trees[,2:3]
trees[trees$Height>2,]    #selects row with height greater than 82
trees[10:12,2]

trees[10:12,2,drop(FALSE)]

#how to modify a data frame 
x
x[1,"Age"]<-"hello"
x
#Adding components
cbind(x,state=c("NY","CHI"))
x$state<- c("NY","CHI"); x

#Deleting component
x$state<- NULL
x

x<-x[-1,]
x
#Simplest data frame example2
score<-c(1L,3L,NA)
counts<-c(10L,2L,NA)
row.names<-c('one','two','three')

df<-data.frame(score)  #single column
df[["score"]]
df<-data.frame(score,row.names=row.names)   #with row names
rownames(df)

df<-data.frame(vals=row.names)   #explicit naming
df

#Array
ary <- array(1:4, c(2,1,2))
sw <- data.frame(I(ary))
# a data.frame
sw <- data.frame(swiss)
as.data.frame(sw) # swiss, without row names
# now with row names
sw <- data.frame(swiss, row.names = rownames(swiss))
as.data.frame(sw) # swiss

sw[NULL] ;sw #no columns
sw[,NULL] #no columns
sw[NULL,] #no rows

##select columns
sw[1:3]
sw[,1:3]   #same as above
sw[1:3,]
sw[,"Fertility"]
sw[,"Fertility",drop(FALSE)]

##select rows and columns
sw[4:5, 1:3]
sw[1]  #one column data frame

## the same
sw[,1,drop=F]
sw[,1]  
sw[[1]]  #the same

##row and column names
cn<- paste("X", seq_len(ncol(swiss)),sep = ".")
colnames(sw)<-cn
colnames(sw)
rn<-seq(nrow(sw))
rownames(sw)<- rn
rownames(sw)
sw
## column replacement
df[["counts"]]<- row.names
df[["counts"]]
df[[3]]<-score
df[[3]]
df[["X"]]
df[[3]]<- NULL  #deletion
sw



#Sources
https://www.rdocumentation.org/packages
https://campus.datacamp.com/courses
https://www.tutorialspoint.com/r/r_data_frames.htm











