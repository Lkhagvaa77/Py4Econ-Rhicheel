### IF AND IF ELSE + SWITCH

# IF
x<- -1
if(x>0){
  print(" X is a positive number")
}

# Else
x<- -3
if(x>0){
  print("Non-negative number")
}else{
  print("Negative number")
}

#else if
x<- -3
if(x<0){
  print("x is a negative number")
}else if(x==0){
  print("x is zero")
}else{
  print("x is a positive number")
}

if(x<0){
  print("aksdbka")
}else if(x==0){
  print("asdbabkdb")
}else{
  print("adbksa")
}

#IF and else if in one line
x<- -3
if(x>0){
  print("Non-negative number")
}else{
  print("Negative number")
}

if(x>0) print("non-negative number") else print("negative number")

if(x<0) print("x is a negative number") else if(x==0) print("x is zero") else print("x is a positive number")

### More examples

#Assign
нас<-12
if(нас>18){
  print("насанд хүрсэн")
}else{
    print("насанд хүрээгүй")
}

# Operation
a<-5
b<-8
if(a-b>0){
  print("a b-ээс их тоо")
}else{
  print("а b-ээс бага тоо")
}

x<- -1
y<- if(x>0) "eyreg too" else "sorog too"
y

#list
x<-c("bataa","navchaa","boldoo","bathuu")
if("lkhagvaa"%in% x){
  print("list dotor baina")
}else{
  print("list dotor baihgui baina")
}

x<-c("bataa","navchaa","boldoo","bathuu")
if("navchaa"%in% x){
  print("list-d baina")
}else{
  print(append(x,"lkhagvaa"))
}



## Switch
#switch(statement,list)
switch(2,"one","two","three")
switch(2,"red","green","black")
switch(3,"red","green","black")
switch("length","color"="red","shape"="square","length"=5)


a<-2
b<-3:4
any(a,"b")










