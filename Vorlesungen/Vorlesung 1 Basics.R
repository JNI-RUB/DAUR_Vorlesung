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

Test 