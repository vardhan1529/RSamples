# Initialize a vector of type numeric and length 10
v <- vector("numeric", length = 10)

# For loop
for (i in seq(1:10)) {
    v[i] = i * i
}

# Print vector data
print(v)

# Print vector class
print(class(v))

# Vector supports only single type. Trying to add different data type to the vector results in conversion of data to single type
mul <- c(1, 2, 3, "A", "B", "c")
# 1 2 3 are converted to strings
print(mul)
print(class(mul))

# NAs is given, when an error is occured while conversion
as.numeric(mul)

# numeric, character, logical, integer, complex are classes of object

# Matrix
m <- matrix(ncol = 3, nrow = 3)
print(m)
m <- matrix(1:9)
print(m)
m <- matrix(1:9, nrow = 3, ncol = 3)
print(m)
print(dim(m))
print(attributes(m))
dim(m) <- c(1, 9)
m[1, 1] <- 10
print(m)
col1 <- c(1:3)
col2 <- c(31:35)
col <- cbind(col1, col2)
print(col)
print(class(m))
row1 <- c(1:5)
row2 <- c(6:10)
row <- rbind(row1, row2)
print(row)

# Lists
l <- vector("list")
l <- list("a", 1, "b", 2, TRUE, 1+2i, 2.234)
print(l)
print(class(l))

# Factor
f <- factor(c("A", "B", "C", "A", "B", "C", "D", NA))
print(f)
print(class(f))
print(table(f))
print(unclass(f))

# Null checks
is.na(NA)
is.na(NaN)
is.nan(NA)
is.nan(NaN)

is.na(f)
print(class(NA))

# Matrix is uni type. First column data is converted to string vector
print(cbind(c(1, 2), c("a", "b")))

# Data frames are useful to populate data in tabular format

df <- data.frame(1:4, c("v1", "v2", "v3", "v4"))
print(df)

# names is used to set names for the data. names can be used for all the types like list matrix data farmes vectors
names(df) <- c("S.no", "Name")
print(df)
row.names(df) <- c("R1", "R2", "R3", "R4")
print(df)

# setting names for the rows and columns Matrix
mat <- matrix(1:4, nrow = 2, ncol = 2)
rownames(mat) <- c("R1", "R2")
colnames(mat) <- c("C1", "C2")
print(mat)
dimnames(mat) <- list(c("r1", "r2"), c("c1", "c2"))
print(mat)

# setting names for the list items

nl <- list("Jayavardhan" = 1, "Sreevardhan" = 2, "Reddy" = 3)
print(nl)

# Read the input from the console. Scan function reads all the input data.
s <- scan()