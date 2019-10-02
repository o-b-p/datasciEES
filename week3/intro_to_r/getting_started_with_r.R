#Coding club workshop 1 - Getting started with R and RStudio
#Learning how to import and explore data, and make graphs about Edinburgh's biodiversity

#The next few lines usually load the packages required for analysis.
#e.g. install.packages("package-name")
install.packages("dplyr")

#once installed we load packages using library(packagename)
library(dplyr) #there are quotation marks when installing a package, but not when loading it

2 + 2 #here we are performing a simple mathematical addition

setwd("C:/Users/erika/Documents/datasciEES/week3/intro_to_r/")
#this is where we will save everything related to the project and where R will look for scripts, data, plots etc.
#this only works with forward slashes "/", not backslashes "\"

              #now make sure the data from https://github.com/ourcodingclub/CC-1-RBasics is downloaded and unzipped into the working directory.

#lets import the data using the read.csv() command
edidiv <- read.csv("C:/Users/erika/Documents/datasciEES/week3/intro_to_r/edidiv.csv")
#R works best with .csv files
#here we have created an object called edidiv and assigned it to the .csv file we downloaded

edidiv #this lets us preview the data. to see more than the first few lines you can also click on our object in the Environment panel

head(edidiv)                # Displays the first few rows
tail(edidiv)                # Displays the last rows
str(edidiv)                 # Tells you whether the variables are continuous, integers, categorical or characters

              #str lets you see what type of variables you have.
              #factors are categorical grouping variables
              #numberic data is numbers
              #integers are whole numbers
              #character variables are words or strings of words

class(edidiv$taxonGroup)    #see what type of variable the column "taxonGroup" is classed as

edidiv$taxonGroup <- as.factor(edidiv$taxonGroup) #forces the "taxonGroup" column to be classed as a factor

summary(edidiv) #gives you a summary of your data
dim(edidiv)     #displays number of rows and columns
summary(edidiv$taxonGroup)  #gives a summary of a particular variable (column) in your database

Beetle <- filter(edidiv, taxonGroup == "Beetle")
# The first argument of the function is the data frame, the second argument is the condition you want to filter on. Because we only want the beetles here, we say: the variable taxonGroup MUST BE EXACTLY (==) Beetle - drop everything else from the dataset. (R is case-sensitive so it's important to watch your spelling! "beetle" or "Beetles" would not have worked here.)

Bird <- filter(edidiv, taxonGroup == "Bird")   # We do the same with birds. It's very similar to filtering in Excel if you are used to it.
# You can create the objects for the remaining taxa. If you need to remind yourself of the names and spellings, type summary(edidiv$taxonGroup)

summary(edidiv$taxonGroup)
Butterfly <- filter(edidiv, taxonGroup == "Butterfly")
Dragonfly <- filter(edidiv, taxonGroup == "Dragonfly")
Flowering.Plants <- filter(edidiv, taxonGroup == "Flowering.Plants")
Fungus <- filter(edidiv, taxonGroup == "Fungus")
Hymenopteran <- filter(edidiv, taxonGroup == "Hymenopteran")
Lichen <- filter(edidiv, taxonGroup == "Lichen")
Liverwort <- filter(edidiv, taxonGroup == "Liverwort")
Mammal <- filter(edidiv, taxonGroup == "Mammal")
Mollusc <- filter(edidiv, taxonGroup == "Mollusc")


unique(Bird)
length(Bird)

a <- length(unique(Beetle$taxonName)) #counts the number of unique species names, i.e. species richness! and stores it as an object
b <- length(unique(Bird$taxonName))
c <-length(unique(Butterfly$taxonName))
d <-length(unique(Dragonfly$taxonName))
e <-length(unique(Flowering.Plants$taxonName))
f <-length(unique(Fungus$taxonName))
g <-length(unique(Hymenopteran$taxonName))
h <-length(unique(Lichen$taxonName))
i <-length(unique(Liverwort$taxonName))
j <-length(unique(Mammal$taxonName))
k <-length(unique(Mollusc$taxonName))
