#Vorlesung 1: Basics
library(rio)

# Basic calculations
3 + 5 * 2

(3 + 5) * 2

sqrt(8.33)

round(sqrt(8.33), 2)

# Assigning variables
x <- 4

# Print x
x

x * 2

# Generate vectors

x <- c(1, 2, 3, 4)
y <- c(2, 3, 4, 5)

2 * x
x * y

# Vector with 5 ones
rep(1, 5)

# Sequence from 1 to 5
seq(1, 5)

1:6

# Subsetting vectors
z <- c(3, 4, 5, 6)
z [2]
z [4]

# Elements 1 to 3
z [1:3]

# All Elements except last
z [-4]

# Subset with true/false; Case sensitive!
x[c(TRUE, FALSE, FALSE, TRUE)]

# Factors: Vector that contains predefined values
a <- factor(c("1", "3", "3", "7"),
            levels = c("1", "3", "7"))
class(a)
levels(a)

# Missing values; R reserves NA for missing values
NA * 10

NA^0

# Check for missing values
b <- c(1, 8, NA, 8)
is.na(b)

## Matrices
# Vectors can have attributes, adding "dim" to vector makes it 2-dimensional
C <- 1:6
dim(C) <- c(3,2) # 3 x 2 Matrix
C

# Use the matrix command to create a matrix from a vector
matrix(C, nrow = 2, ncol = 3, byrow = TRUE)
cbind(1:2, 3:4, 5:6)

# Matrix operations
D <- matrix(c(1, 2, 0, 3), ncol = 2)
D

# Transpose
t(D)

#Inverse
solve(D)

# Matrix multiplication
E <- matrix(c(4, 7, 2, 6), ncol = 2)
D %*% E

# Subsetting Matrices
A <- matrix(-5:6, ncol = 4)
A

# [row, column]
A[1, ]
A[ ,1:3]

# Useful commands
sum(D) # Summe von ...
table(D) # Wie oft kommen Werte vor
mean(D) # Durchschnitt
median(D) # Median
var(D) # Varianz
sd(D) # Standardabweichung
cov(D, E) # Kovarianz von .. und ..
quantile(D) 
min(D)
max(D)

# Lists
F <- list(1:5, "a", c(TRUE, FALSE), seq(0.2, 0.8, by= 0.2))
typeof(F)
F

G <- list(
  integer_vector = 1:6,
  character_vector = "a"
)
G
G$integer_vector
G[[1]]

# Data Frames: Used when dealing with tabular data

df <- data.frame(c = 1:10, d = letters[1:10])
df

# Useful Commands
View(df)      # Opens df in spreadsheet
summary(df)   # Summary statistics for each variable
df$c          # Access variable with name c
head(df)      # Shows first 6 rows of df
tail(df)      # Shows last 6 rows of df
nrow(df)      # Shows number of rows of df
ncol(df)
names(df)     # Shows column names of df

# Creating a new column
df$e <- seq(0.1, 1, by = 0.1)
df

# Select multiple columns by name
df[ ,c("c", "e")]

# Select a subset of observations based on a condition

df[df$c <= 5,]

# Importing Data Sets

df <- read.csv("Ordner/Ordner2/Datei.csv")









