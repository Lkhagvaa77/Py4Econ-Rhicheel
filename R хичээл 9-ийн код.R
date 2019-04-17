# R - ийн хичээл 9: UDF
############# FUNCTIONS ##############

{
  mean(c(1,2))
min(c(1,2))
}
# YOUR FIRST FUNCTION
function.name<-function(argument){
  statement
}

subtract<-function(x,y){
  print(x-y)
}
subtract(11,10)
# CALL YOUR FUNCTION
new.function <- function(a,b) {
  result <- a * b
  print(result)
}
new.function(100,200)
Rhicheel_function<-function(x,b){
  print(x/b)
}
Rhicheel_function(100,10)
## Built-in Function
print(seq(32,44))
print(mean(25:82))
print(sum(41:68))

## User-defined Function
new.function<-function(a){
  for(i in 1:a){
    b<-i^2
    print(b)
  }
}
new.function(10)

## calling a function without an argument
new.function<-function(){
  for(i in 1:5){
    print(i^2)
  }
}
new.function()

## calling a function with argument values
new.function<-function(a){
  for(i in 1:a){
    print(i^2)
  }
}
new.function(10)
# Create a function with arguments
new.function<-function(a,b,c){
  result<-a*b+c
  print(result)
}
average<-function(){
  s<-mean(b)
  print(s)
}
average(1:10)

# Call the function by position of arguments
new.function(b = 10,a = 2,c = 80)

## Calling a function with default argument
new.function<-function(){
  result<-2*6
  print(result)
}
new.function()
# call the function without giving any argument
new.function()
# call the function with giving new values of the argument
new.function(1,2,3)

#####

#1
pow <- function(x, y) {
  result <- x^y
  print(paste(x,"-ийн квадрат", y, "is", result))
}
pow(2,2)

#2
increase<-function(value,increament){
  if(increament<0){
    return("stopped")
  }
  print(value+increament)
}
increase(10,-10)

#3
miles.to.km <- function(miles)miles*8/5
miles.to.km(1)


f <- function(num) {
for(i in seq_len(num)) {
cat("Hello, world!\n")
}
}
f(10)

#4
#
result<-function(r){
  b<-10*r^2
  return(b)
}
result(1)
x<-1:5
result(c(1,2,3,4,5))
result(x)
#
result.2<-function(r){
  b<-10*r^2
  c<-20*r
  return(c(b=b,c=c))
  
}
result.2(x)

#
result.2<-function(r){
  b<-10*r^2
  c<-20*r
  return(data.frame("BBB"=b,"CCC"=c))
  
}
result.2(x)

#
graph<-function(r){
  b<-10*r^2
  return(plot(r,b))
}
graph(x)

