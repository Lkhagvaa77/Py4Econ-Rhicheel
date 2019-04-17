### LOOPS

## FOR

# simple
for(i in c(1:2)){
  print("hello")
}

for(i in c(1:8)){
  print(i)
}

a<-c(1:8)
for(i in a){
  print(i)
}

# Looping through a vector

loopevoc<- c(1:15)
total<-1
for(i in loopevoc){
  print(i)
}

for(i in loopevoc){
  total<-total*i
}
print(total)
options(scipen = 999)


# Through list

cars2<-list("lambo","audi","benz","toyota")
cars2

for(x in cars2){
  print(x)
  if(x=="benz"){
      break
    }
}

# Break

total<-1
for(i in seq(2,15,2)){
  total<-total*i
  if(i==12){
    break
  }
}
print(total)

2*4*6*8*10*12


# Double loop

mymatrix<-matrix(1:50,nrow = 5)
mymatrix

for(row in 1:nrow(mymatrix)){
  for(col in 1:ncol(mymatrix)){
    print(mymatrix[row,col])
  }
}


for(row in 1:nrow(mymatrix)){
  for(col in 1:ncol(mymatrix)){
    print(paste("row is =",row, "and col=",col,"and the value is: ",mymatrix[row,col]))
  }
}


## While

# simple
x<-1
while(x<10){
  print(x)
  x<-x+2
}


val<-("while loop")
count<-5

while(count < 7){
  print(val)
  count=count+1
}

# Break

for(i in 1:6){
  print(i)
  if(i>3){
    break
  }
}

#

x<-1
while(x<25){
  print(x)
  x<-x+1
}

for(i in 1:100){
  print("hello")
}

for(i in 1:5) print(1:i)

#Repeat

x=10
repeat{
  x<-x+6
  print(x)
  if(x>100){
    break
  }
}

x=200
repeat{
  x<-x^2
  print(x)
  if(x>100){
    break
  }
}





