#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment
#getwd()
#setwd()

#This brings the 'Titanic' data into my environment from Base R (Run this)
Titanic

#This code saves the Titanic data as a dataframe with a new name
#TASK: Save the Titanic data as a dataframe with a new name that includes your first name
#for example I would name my data AnnaTitanic
library(package="tibble")
ChujunTitanic <- as_tibble(Titanic)
colnames(ChujunTitanic)<- c("Class","Sex","Age","Survived","Freq")
ChujunTitanic

#This code chunk allows me to see the top 2 rows of my data
#TASK: Write the code that returns the top rows
library(package="dplyr")
slice(.data=ChujunTitanic,c(1:2))

#This code chunk shows me the internal structure 
#Task: Write the code that shows the number of rows, columns, column names, class of columns   
str(ChujunTitanic)

#This code chunk shows me some basic summary stats
#Such as Min, Max, Mean. Quartiles...
#Task: Write the code that gives summary stats
summary(ChujunTitanic)

#This allows me to save one column as its own object ('values' in the Environment)
#Task: Write the code to create an object for just the Sex column 
#and write the code to create an object for just the Age column 
#(these should show as values in the environment window, not as 'datasets'Data')
Sex_c <- as.vector(ChujunTitanic$Sex)
Age_c <- as.vector(ChujunTitanic$Age)

#This takes the individual objects ('values' in the Environment) and creates a dataframe
#Once I do this, I can see the Data in the Environment 
#Task: Write the code to create one new data.frame from the Sex and Age values you just created
age_sex_new <- tibble(sex_new=as.list(Sex_c),age_new=as.list(Age_c))

#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#Task: Write the code to create a subset of the data where the Freq is > 25
#If I wanted to save the subset, I would need to name it as done in the code above
ChujunTitanic_sub <- subset(ChujunTitanic,Freq>25)
ChujunTitanic_sub

#This shows me how many rows are in my dataset and
#TASK: Write the code that returns the number of rows
nrow(ChujunTitanic)

#This shows me how many columns are in my dataset
#TASK: Write the code that returns the number of columns
ncol(ChujunTitanic)

#This also shows me how many rows and columns with just one command
#TASK: Write the code that returns the number of rows and columns with just one command
dim(ChujunTitanic)

#This code will install the ggplot2 package
#TASK: Write the code that installs the ggplot2 package
install.packages(pkgs="ggplot2")  
  
#This code calls the ggplot2 package so I can use its functions
#Task: Write the code that 'calls' the ggplot2 package
library(package="ggplot2")

#This code creates a bar chart of the number of passengers that survived 
#and did not survive (2 bars)
#Task: replace the dataframe name and column names to create the chart
#(you should see the chart in the Plots window)
ggplot(ChujunTitanic, aes(Survived=="Yes", Survived=="No")) +
  geom_col()

