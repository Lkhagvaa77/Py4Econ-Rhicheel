# R $B'g'Z'i'o'o'](B 2: $B'?'_'T'Z'['_(B ??$B'[']'U']????'U(B

#CTRL+SHIFT+ENTER     $B'"??'g(B $B'^??'b'Z'['T(B $B'Q'X'Z']']'e'e']'_'Q(B
#CTRL+ENTER           $B'4'e'g'Q'['_(B $B'c'`'_'T'`'c'`'_(B 1 $B'^??'b'Z'['T(B $B'Q'X'Z']']'e'e']'_'Q(B
#CTRL+2               $B'\'`'b'c'e'b'm'T(B console-$B'b'e'e(B $B'Q'S'Q'Q'i'Z'_'Q(B
#CTRL+SHIFT+R         $B'_'o'b']'o'g(B ()
#CTRL+ALT+E           $B'c'`'_'T'`'c'`'_(B $B'^??'b'_????'c(B $B'd??'T'c'T??'](B $B'g??'b'd'o'](B $B'Q'X'Z']']'e'e']'_'Q(B
#CTRL+D               $B'.??'b(B $B'e'c'd'T'Q'g(B
#CTRL+L               console-$B'Z'['T(B $B'h'o'S'o'b']'o'g(B
#CTRL+SHIFT+N         $B':'Z'_'o(B script $B'_'o'o'g(B

#1 $B'?'_'T'Z'['_(B $B'^'Q'd'V'^'Q'd'Z'\(B ??$B'[']'U'o'](B:
1+1
2^2
4^1/2


# $B'#'V'\'d'`'b(B ????$B'c'T'o'g(B
c()
x<-c(1,2.2,3.3,4,6)
c(1,2.2,3.3,4,6)
is.vector(x)
is.numeric(x)
plot(x)

$B'_'Q'c(B<-c(11,22,33,44)
$B'_'o'b(B<-c('$B'"'Q'd'Q'Q(B','$B'1'e']'^'Q'Q(B','$B'1'e'_'h'Q'T(B','$B'%'`'_'U'`'T(B')
names($B'_'Q'c(B)<-$B'_'o'b(B
$B'_'Q'c(B
str($B'_'Q'c(B)
summary($B'_'Q'c(B)
length($B'_'Q'c(B)

#$B':'Q']'T'Q'g(B 
x<-c(1,6,3,5,0)
is.na(x)
anyNA(x)

#$B'#'V'\'d'`'b'd'`'[(B $B'Q'X'Z']']'Q'g(B (1)
x<-1:20
mean(x)
sd(x)
var(x)
length(x)
sum(x)

#$B'#'V'\'d'`'b'd'`'[(B $B'Q'X'Z']']'Q'g(B (2)
x[1:10]
mean(x[1:10])
x<-c(1,2,3,4,5,6,7,8,9,10)
mean(x)

#$B'#'V'\'d'`'b'd'`'[(B $B'Q'X'Z']']'Q'g(B (3)
a<-1:10
b<-11:20
a+b

#$B'.'Q'd'b'Z'h(B (1)
x1<-1:3; x2<-4:6; x3<-7:9
x<-cbind(x1,x2,x3)
x
dim(x)
length(x)
matrix(1:8,2,4)

#$B'-'*'3'4(B ????$B'c'T'o'g(B
minii.list<-list(hicheel=c("mat","nybo","micro","macro"),
                 sport=c('sags','holbombog','tennis'))
minii.list



