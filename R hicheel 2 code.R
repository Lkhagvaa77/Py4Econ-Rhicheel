# R хичээл 2: Энгийн ??йлдл真真д

#CTRL+SHIFT+ENTER     Б真х м真рийг ажиллуулна
#CTRL+ENTER           Тухайн сонгосон 1 м真рийг ажиллуулна
#CTRL+2               корсурыг console-руу аваачина
#CTRL+SHIFT+R         нэрлэх ()
#CTRL+ALT+E           сонгосон м真рн真真с т真гсг真л х真ртэл ажиллуулна
#CTRL+D               М真р устгах
#CTRL+L               console-ийг цэвэрлэх
#CTRL+SHIFT+N         Шинэ script нээх

#1 Энгийн математик ??йлдэл:
1+1
2^2
4^1/2


# Вектор ????сгэх
c()
x<-c(1,2.2,3.3,4,6)
c(1,2.2,3.3,4,6)
is.vector(x)
is.numeric(x)
plot(x)

нас<-c(11,22,33,44)
нэр<-c('Батаа','Пулмаа','Пунцаг','Дондог')
names(нас)<-нэр
нас
str(нас)
summary(нас)
length(нас)

#Шалгах 
x<-c(1,6,3,5,0)
is.na(x)
anyNA(x)

#Вектортой ажиллах (1)
x<-1:20
mean(x)
sd(x)
var(x)
length(x)
sum(x)

#Вектортой ажиллах (2)
x[1:10]
mean(x[1:10])
x<-c(1,2,3,4,5,6,7,8,9,10)
mean(x)

#Вектортой ажиллах (3)
a<-1:10
b<-11:20
a+b

#Матриц (1)
x1<-1:3; x2<-4:6; x3<-7:9
x<-cbind(x1,x2,x3)
x
dim(x)
length(x)
matrix(1:8,2,4)

#ЛИСТ ????сгэх
minii.list<-list(hicheel=c("mat","nybo","micro","macro"),
                 sport=c('sags','holbombog','tennis'))
minii.list



