# 1. Create a vector using : operator

# a. Sequence from -5 to 5
sequence <- -5:5
(sequence)
# Output: Sequence from -5 to 5 creating a vector with 11 elements.

# b. x <- 1:7. What will be the value of x?
x <- 1:7
(x)
# Output: Vector with values from 1 to 7.


# 2. Create a vector using seq() function

# a. Sequence from 1 to 3 with step size of 0.2
sequence <- seq(1, 3, by=0.2)
(sequence)
# Output: Sequence starting from 1 to 3 with a step size of 0.2, total of 11 elements.


# 3. Access elements from a workers' age census
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

# a. Access 3rd element
ages[3]
# Output: 22, the value of the 3rd element.

# b. Access 2nd and 4th elements
ages[c(2, 4)]
# Output: Values 28 and 36 for 2nd and 4th elements.

# c. Access all but the 4th and 12th elements
ages[-c(4, 12)]
# Output: All elements except the 4th and 12th values are shown.


# 4. Named vector
x <- c("first" = 3, "second" = 0, "third" = 9)

# a. Print the names of the vector
names(x)
# Output: Names of the vector are "first", "second", and "third".

# b. Access elements "first" and "third"
x[c("first", "third")]
# Output: 3 for "first" and 9 for "third".


# 5. Modify sequence from -3 to 2
x <- -3:2

# a. Modify 2nd element to 0
x[2] <- 0
x
# Output: Sequence changes to -3, 0, -1, 0, 1, 2.


# 6. Diesel fuel purchased by Mr. Cruz

# a. Create a data frame for months, price per liter, and purchase quantity
months <- c("Jan", "Feb", "March", "Apr", "May", "June")
priceperliter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchasequantity <- c(25, 30, 40, 50, 10, 45)

fueldata <- data.frame(months, priceperliter, purchasequantity)
(fueldata)
# Output: Data frame showing months, price per liter, and purchase quantity.

# b. Calculate average fuel expenditure using weighted mean
weighted.mean(priceperliter, purchasequantity)
# Output: The weighted mean fuel expenditure is 59.375 PHP per liter.


# 7. Rivers dataset

# a. Create vector with statistics from rivers dataset
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data
# Output: A vector with length, sum, mean, median, variance, standard deviation, minimum, and maximum values of the rivers dataset.


# 8. Modify Forbes Ranking Data

# a. Create vectors for Forbes ranking, power_rankings, pay, and celebrity names
powerRanking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
celebrityName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stem", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

celeb <- data.frame(PowerRanking = powerRanking, Celebrity = celebrityName, Pay = pay)
print(celeb)


#b. Modify power ranking and pay of J.K. Rowling and change power ranking to 15 and pay to 90
powerRanking[19] <- 15
pay[75] <- 90
celeb <- data.frame(PowerRanking = powerRanking, Celebrity = celebrityName, Pay = pay)
print(celeb)

#c. Create an excel file
write.csv(celeb, file = "PowerRanking.csv", row.names = FALSE)
importedData <- read.csv("PowerRanking.csv")
print(importedData)

#d. Access the rows 10 to 20 
ranksData <- celeb[10:20, ]
save(ranksData, file = "Ranks.Data")
print(ranksData)

#e. It displays the rows 10 to 20 in a separate file.


#9. Hotels-Vienna

# a. Import the Hotels-Vienna dataset

# install.packages("readxl")
library(readxl)
# Import the Excel file
hotels_vienna <- read_excel("C:/Users/User/Downloads/hotels-vienna.xlsx")
hotelsdata <- hotels_vienna
(hotelsdata)

#b. Determine the dimensions of the dataset
dim(hotelsdata)

#c. Select specific columns
selectedcolumns <- hotelsdata[ , c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
(selectedcolumns)

#d. Save the data as new.RData
save(selectedcolumns, file = "new.RData")

#e. Display the first and last six rows of the new data
load("new.RData")
head(selectedcolumns)
tail(selectedcolumns)


#10. A list of ten (10) vegetables I ate during my lifetime.

#a: Create a list of ten vegetables
vegetables <- c("Carrot", "Beans", "Tomato", "Cabbage", "Pumpkins", "Pepper", "Cucumber", "Potato", "Spinach", "Lettuce")
(vegetables)

#b. Add two additional vegetables to the list
vegetables <- c(vegetables, "Onion", "Garlic")
(vegetables)

#c. Add four vegetables after index 5
vegetables <- append(vegetables, c("Okra", "Eggplant", "Corn", "Peas"), after = 5)
(vegetables)

length(vegetables)

#d. Remove vegetables at index 5, 10, and 15
vegetables <- vegetables[-c(5, 10, 15)]
(vegetables)

length(vegetables)