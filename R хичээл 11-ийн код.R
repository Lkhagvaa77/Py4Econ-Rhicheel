
# CLASS and METHODS -------------------------------------------------------

### Source: https://www.datamentor.io/r-programming/inheritance/
### Source: The Art of R programming
### GITHUB: https://github.com/Lkhagvaa77/Books-related-to-R/upload


# Old-Style classes -------------------------------------------------------
j <- list(ner="Boldoo", tsalin=55000, holboo=T)
class(j) <- "employee"
attributes(j) # let’s check
print(j)
j$ner
#write function.
print.employee <- function(worker) {
  cat("Tuunii ner",worker$ner,"\n")
  cat("Tuunii tsalin",worker$tsalin,"\n")
  cat("holboonii gishuun eseh",worker$holboo,"\n")
}
print.employee(j)


# New-Style classes -------------------------------------------------------
setClass("employee",
            representation(
              name="character",
              salary="numeric",
              union="logical")
            )

setMethod("show", "employee",
          function(object) {
            inorout <- ifelse(object@union,"holboond")
            cat(object@name,"iin tsalin",object@salary,
                "mon",inorout, "haryalaltai", "\n")
          }
)
# create an instance of this class, using new():
Bataa <- new("employee",name="Bataa",salary=55000,union=T);Bataa
show(Bataa)

#member variables are called slots. @
Bataa@salary

# Inheritance ---------------------------------------------------------------

# Inheritance in S3 class
a <- list(name="Boldoo", age=20, GPA=4)
class(a) <- "student"
attributes(a) # let’s check
print(a)

student <- function(n,a,g) {
  value <- list(name=n, age=a, GPA=g)
  attr(value, "class") <- "student"
  value
}

print.student <- function(obj) {
  cat(obj$name, "\n")
  cat(obj$age, "years old\n")
  cat("GPA:", obj$GPA, "\n")
}
print.student(a)

 # Internationalstudents which inherits from student
  # create a list
s <- list(name="Boldoo", age=21, GPA=3.5, country="Mongolia")
  # make it of the class InternationalStudent which is derived from the class student
class(s) <- c("InternationalStudent","student")
  # print it out
s
  # InternationalStudents method
print.InternationalStudent <- function(obj) {
  cat(obj$name, "is from", obj$country, "\n")
}
print.InternationalStudent(s)

# Inheritance in S4 class -------------------------------------------------
# define a class called student
setClass("student",
         slots=list(name="character", age="numeric", GPA="numeric")
)
# define class method for the show() generic function
setMethod("show",
          "student",
          function(object) {
            cat(object@name, "\n")
            cat(object@age, "years old\n")
            cat("GPA:", object@GPA, "\n")
          }
)
student <- new("student",name="Lkhagvaa",age=20,GPA=4)
show(student)
student@name
slot(student,"name") <- "Ganaa"
student@name
# inherit from student
setClass("InternationalStudent",
         slots=list(country="character"),
         contains="student"
)

e <- new("InternationalStudent",name="Lkhagvaa", age=21, GPA=3.5, country="France")
show(e)


