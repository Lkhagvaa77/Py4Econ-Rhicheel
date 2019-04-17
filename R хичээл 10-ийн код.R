##### Classes

### OOP (Object oriented programming)

class(1)
class(TRUE)
class(rnorm(100))
class(NA)
class("foo")

### S3
setClass("person",
         slots = list(name = "character", income = "numeric", expense="numeric"))
s<-new("person",name="bat",income=100,expense=50)
s

# modifying slot using slot() function
slot(s,"income")
slot(s,"income") <- 1000
s

### Refence class
# Example 1
account<-setRefClass("account",
                     fields = list(balance="numeric"))
a<-account$new(balance=1000)

account<-setRefClass("account",
                     fields = list(balance="numeric"),
                     methods = list(
                       withdraw=function(x){
                         balance<<-balance-x
                       },
                       deposit=function(x){
                         balance<<-balance+x
                       }
                     )
)
a<-account$new(balance=800)
a$deposit(500)
a$balance
a$withdraw(500)
a$balance

# Example 2
bank <- setRefClass("bank",
                           contains = "account",
                           methods = list(
                             withdraw = function(x) {
                               if (balance < x) stop("Not enough money")
                               balance <<- balance - x
                             }
                           )
)
accountBat <- bank$new(balance = 100)
accountBat$deposit(50)
accountBat$balance
accountBat$withdraw(100)
accountBat$balance
accountBat$withdraw(200)



# How to create refence object
student <- setRefClass("student",
                         fields = list(name = "character", age = "numeric", GPA = "numeric"))
  s <- student(name = "John", age = 21, GPA = 3.5)
s









