## Source: 
## Github


## The working directory
setwd()
getwd()

mine<-getwd()
setwd("c:\\temp")
setwd(mine)

dir("c:\\temp")
data<-read.table(file = "/",header = T)

## Data input using read.table
head(data)

data<-read.delim("file")
rt<-function(x) read.table(paste("c:\\temp\\",x,".txt",sep="")),
header=T)
data<-rt("file")

## Data input directly from the web
Data2<-read.table("http:\\www.bio.ic.ac.uk/research/mjcraw/therbook/data/cancer.txt",header = T)
head(Data2)





# EXPORT FROM R TO EXCEL --------------------------------------------------

write.table(x, outfile, sep=delimiter, quote=TRUE, na="NA")
#where x is the object and outfile is the target file. For example, the statement
write.table(mydata, "mydata.txt", sep=",")

#Excel spreadsheet
library(xlsx)
write.xlsx(x, outfile, col.Names=TRUE, row.names=TRUE,
           sheetName="Sheet 1", append=FALSE)

# Statistical application
write.foreign(dataframe, datafile, codefile, package=package)
For example, the code
library(foreign)
write.foreign(mydata, "mydata.txt", "mycode.sps", package="SPSS")

# IMPORT FROM EXCEL TO R --------------------------------------------------

## install and load xlxs package
install.packages("xlsx")
library("xlsx")

## read and excel file
read.xlsx(file, sheetIndex, header=TRUE, colClasses=NA)
read.xlsx2(file, sheetIndex, header=TRUE, colClasses="character")

  #file : the path to the file to read
  #sheetIndex : a number indicating the index of the sheet to read; e.g : use sheetIndex=1 to read the first sheet
  #header : a logical value. If TRUE, the first row is used as the names of the variables
  #colClasses : a character vector that represents the class of each column

library(xlsx)
file <- system.file("tests", "test_import.xlsx", package = "xlsx")
res <- read.xlsx(file, 1)  # read first sheet
head(res[, 1:6])

## write data to an excel
write.xlsx(x, file, sheetName="Sheet1", 
           col.names=TRUE, row.names=TRUE, append=FALSE)
write.xlsx2(x, file, sheetName="Sheet1",
            col.names=TRUE, row.names=TRUE, append=FALSE)

  #x : a data.frame to be written into the workbook
  #file : the path to the output file
  #sheetName : a character string to use for the sheet name.
  #col.names, row.names : a logical value specifying whether the column names/row names of x are to be written to the file
  #append : a logical value indicating if x should be appended to an existing file.

library(xlsx)
write.xlsx(USArrests, file="myworkbook.xlsx", 
           sheetName="USA Arrests")

# Write the first data set in a new workbook
write.xlsx(USArrests, file="myworkbook.xlsx",
           sheetName="USA-ARRESTS", append=FALSE)

# Add a second data set in a new worksheet
write.xlsx(mtcars, file="myworkbook.xlsx", sheetName="MTCARS", 
           append=TRUE)

# Add a third data set
write.xlsx(Titanic, file="myworkbook.xlsx", sheetName="TITANIC", 
           append=TRUE)

 ## Simple R function to export quickly multiple datasets to the same excel workbook
 # xlsx.writeMultipleData
 # file : the path to the output file
 # ... : a list of data to write to the workbook
xlsx.writeMultipleData <- function (file, ...)
{
  require(xlsx, quietly = TRUE)
  objects <- list(...)
  fargs <- as.list(match.call(expand.dots = TRUE))
  objnames <- as.character(fargs)[-c(1, 2)]
  nobjects <- length(objects)
  for (i in 1:nobjects) {
    if (i == 1)
      write.xlsx(objects[[i]], file, sheetName = objnames[i])
    else write.xlsx(objects[[i]], file, sheetName = objnames[i],
                    append = TRUE)
  }
}

xlsx.writeMultipleData("myworkbook.xlsx",
                       mtcars, Titanic, AirPassengers, state.x77)


# create and format nice excel workbook -----------------------------------

  #Create a workbook
  #Define some cell styles : Font color and size, text alignment, border and data format, …
  #Write a table into an Excel spreadsheet using the defined styles in step 2.
  #Save the workbook to a file
  #Open and view the resulting workbook

## step 1
 # create a new workbook for outputs
 # possible values for type are : "xls" and "xlsx"
wb<-createWorkbook(type="xlsx")

## step 2
CellStyle(wb, dataFormat=NULL, alignment=NULL,
          border=NULL, fill=NULL, font=NULL)
  #wb : a workbook object as returned by createWorkbook or loadWorkbook.
  #dataFormat : a DataFormat object
  #alignment : a Alignment object
  #border : a Border object
  #font : a Font object

# Define some cell styles
# Title and sub title styles
TITLE_STYLE <- CellStyle(wb)+ Font(wb,  heightInPoints=16, 
                                   color="blue", isBold=TRUE, underline=1)
SUB_TITLE_STYLE <- CellStyle(wb) + 
  Font(wb,  heightInPoints=14, 
       isItalic=TRUE, isBold=FALSE)

# Styles for the data table row/column names
TABLE_ROWNAMES_STYLE <- CellStyle(wb) + Font(wb, isBold=TRUE)
TABLE_COLNAMES_STYLE <- CellStyle(wb) + Font(wb, isBold=TRUE) +
  Alignment(wrapText=TRUE, horizontal="ALIGN_CENTER") +
  Border(color="black", position=c("TOP", "BOTTOM"), 
         pen=c("BORDER_THIN", "BORDER_THICK")) 


  ##wb : a workbook object as returned by createWorkbook or loadWorkbook.
  #The main arguments for Font() function :
 # color : font color
#heightInPoints : font size. Usual values are 10, 12, 14, etc
#isBold, isItalic : a logical indicating whether the font should be bold or italic
#underline : an integer specifying the thickness of the underline. Possible values are 0, 1, 2.
#name : the font to use; e.g: “Courier New”.
#The main arguments for Alignment() function :
#  wrapText : a logical indicating whether the text should be wrapped.
#horizontal : the horizontal alignment. Possible values are : “ALIGN_CENTER”, “ALIGN_JUSTIFY”, “ALIGN_LEFT”, “ALIGN_RIGHT”.
#vertical : the vertical alignment. Possible values are : “VERTICAL_BOTTOM”, “VERTICAL_CENTER”, “VERTICAL_JUSTIFY”, “VERTICAL_TOP”
#rotation : a numerical value specifying the degrees you want to rotate the text in the cell. Default value is 0.
#The main arguments for Border() function :
#  color : the border color; e.g : color=“red” or color =“#FF0000”
#position : the border position. Allowed values are : “BOTTOM”, “LEFT”, “TOP”, “RIGHT”
#pen : the pen style. Allowed values are : “BORDER_DASH_DOT”, “BORDER_DASH_DOT_DOT”, “BORDER_DASHED”, “BORDER_DOTTED”, “BORDER_DOUBLE”, “BORDER_HAIR”, “BORDER_MEDIUM”, “BORDER_MEDIUM_DASH_DOT”, “BORDER_MEDIUM_DASH_DOT_DOT”, “BORDER_MEDIUM_DASHED”, “BORDER_NONE”, “BORDER_SLANTED_DASH_DOT”, “BORDER_THICK”, “BORDER_THIN”.


# step 3: write data and plot into workbook
# Create a new sheet in the workbook
sheet <- createSheet(wb, sheetName = "US State Facts")

## add title into worksheet
# Helper function to add titles
# - sheet : sheet object to contain the title
# - rowIndex : numeric value indicating the row to 
#contain the title
# - title : the text to use as title
# - titleStyle : style object to use for title
xlsx.addTitle<-function(sheet, rowIndex, title, titleStyle){
  rows <-createRow(sheet,rowIndex=rowIndex)
  sheetTitle <-createCell(rows, colIndex=1)
  setCellValue(sheetTitle[[1,1]], title)
  setCellStyle(sheetTitle[[1,1]], titleStyle)
}

# Add title
xlsx.addTitle(sheet, rowIndex=1, title="US State Facts",
              titleStyle = TITLE_STYLE)
# Add sub title
xlsx.addTitle(sheet, rowIndex=2, 
              title="Data sets related to the 50 states of USA.",
              titleStyle = SUB_TITLE_STYLE)


## add table into worksheet
head(state.x77)

# Add a table
addDataFrame(state.x77, sheet, startRow=3, startColumn=1, 
             colnamesStyle = TABLE_COLNAMES_STYLE,
             rownamesStyle = TABLE_ROWNAMES_STYLE)

# Change column width
setColumnWidth(sheet, colIndex=c(1:ncol(state.x77)), colWidth=11)

## add a plot into excel worksheet
# create a png plot
png("boxplot.png", height=800, width=800, res=250, pointsize=8)
boxplot(count ~ spray, data = InsectSprays,
        col = "blue")
dev.off()

# Create a new sheet to contain the plot
sheet <-createSheet(wb, sheetName = "boxplot")

# Add a title to the sheet
xlsx.addTitle(sheet, rowIndex=1, 
              title="Box plot using InsectSprays data",
              titleStyle = TITLE_STYLE)

# Add the plot created previously
addPicture("boxplot.png", sheet, scale = 1, startRow = 4,
           startColumn = 1)

# Remove the plot from the disk
res<-file.remove("boxplot.png")

## step 4: save the excel workbook to the disk
# Save the workbook to a file
saveWorkbook(wb, "r-xlsx-report-example.xlsx")

