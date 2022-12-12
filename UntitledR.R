# R basic Lecture

# Remove memory stored objects 
  rm(list = ls ())
  
  # checking your working directory 
  getwd()
  
  # change working directory to ...
  setwd('/Users/wilfredwandji/Desktop/code/DS311-Technologies-in-Data-Analytic')
  
#----------------------------------#
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

x * 3 

y <- 5:20

z <- c('apple', 'banana', 'grape', 'pear')

length(z)

z[0]

w <- c(one="a", two= 'y', last='r')

w[1]

education <- factor(x=c("High School", "college", "Masters", "Doctorate"),
                    levels=c("High School", "College", "Masters", "Doctorate"),
                    ordered=TRUE)
mean(x)

range(x)

range(education)

?sort

sort()

# Missing Value 

zChar <- c("Hockey", NA, "Lacrosse", "Basketball", NA)
is.na(zChar)

zChar2 <- c("Hockey", NULL, "Lacrosse", "Basketball", NULL)
is.null(zChar2)

#----------------------------------------

# data.frame

x <- 1:10
y <- -4:5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby",
       "Lacrosse", "Basketball", "Tennis", "cricket", "soccer")

length(x)
length(y)
length(q)

df <- data.frame(First = x, Second = y, Sport = q)
df

class(df)

nrow(df)
ncol(df)
dim(df)[2]

names(df)[1]

rownames(df)

rownames(df) <- c("one", "two", "three", "four", "five",
                  "six", "seven", "eight", "nine", "ten")

rownames(df) <- NULL


head(df, n=7)

df['First']

df$First

df[3, 2:3]

df[ , 1:2]

df[3, c("First", "Sport")]

# R list

ls <- list(1, 2, 3, 4, 5)
class(ls)

vec <- c("a", "b", "c")

mix <- c(ls, vec )

# R matrix 

matrix(1:10, nrow=2)
matrix(1:10, nrow=5)

#---------------------------

# Control Flow Tools 

# Conditional operator in R

x
y

x == y

"a" > "A"

"a" < "b"

10 >= 10

10 != 10

10 == 10

10.0 == 10


toCheck <- 1 

check.bool <- function(x) {
  if (x == 1) {
    print("hello world")
  }
  else if (x == 0) {
    print("oh no!")
  }
  else {
    print("Not 1 or 0")
     }
  }
  
check.bool(10) 

# Switch 

switch_fn <- function(x){
  switch(x,
         "a"="first",
         "b"="second",
         "c"="third",
         "z"="last",
         "other")
}
  
  switch_fn("a")
  
  check.bool <- function(x) {
    if (x == "a") {
      print("first")
    }
    else if (x == "b") {
      print("second")
    }
    else {
      print("Not 1 or 0")
    }
}

  
# ifelse 

ifelse(1 != 1, "Yes", "No")

toTest <- c(1, 1, 0, 0, 1, 1, 0, 0,)

ifelse(toTest == 1, toTest*3, 1)

ifelse(toTest == 1 & toTest == 1.0, 'Great', 'Too Bad')

ifelse(is.na(toTest), "found na", "have value")

# for loop

for (i in 1:10){
  print(i)
  x = i * 10
  print(x)
  ifelse((x == 10), 'found 10', 'other number')
}

i <- 0
while (i <= 10){
  print(i)
  x <- i * 10
  print(x)
  i <- i + 1
}


        

