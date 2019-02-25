# R хичээл 3

#list
l1<-c("Монгол","Америк","япон","1999")
l2<-c("1","2","3","4","5")
l3<-c("x","z","c","r")
l1[1]
l2[3]

#update
l1[1]=199
l1
#append
append(l1,2018)

#Delete
l1[-2]
l1[-c(2,3)]

#sort
list<-c(20,1,400,30)
sort(list)
sort(list,decreasing = T)
sort(list,decreasing = F)

#seq
seq(10,15,1.5)

#MATRIX
x<-c(2,3,6,7,4,5)
matrix(x,2,3)

apartment<-c(316,556)
caravan<-c(343,584)
castle<-c(378,742)

lotr_matrix<-rbind(apartment,caravan,castle)
colnames(lotr_matrix)<-c("US","non-US")
rownames(lotr_matrix)<-c("apartment","caravan","castle")
lotr_matrix
lotr_matrix / 1.12
lotr_matrix*50

a<-matrix(c(20,30,40,50,60,70),3,2)
a
lotr_matrix-a
lotr_matrix-c(50,80,100)
lotr_matrix*a

lotr_matrix[-1]
lotr_matrix
#
a<-matrix(c(1,2,4,2),2,2)
a
rowSums(a)
colSums(a)
a[,1]
a[1,]
a[,1:2]
det(a)
