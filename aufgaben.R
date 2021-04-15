
#### Tasks ####

library(mosaic)

# 1
sum(3 + sin(3))

#2 
round(3.4)

#3 
sqrt(100)

#4
y <- c(1,4,-5)

#5
x <- seq(1, 100)

#6
x <- c(do(100) * 1)

#7
y <- c(do(10)*2, do(10)*4)

#8
length(y)

#9 
unique(x)

#10
sort(c(5,3,8,1,2), decreasing = TRUE)

#11
sum(c(4,3,2), c(2,5,6))

#12
mean(c(1,2,3))

#13
summary(1:100)

#14
xyplot(rnorm(100, 0.1) ~ c(1:100))

#15
cor(c(1,2,3,4), c(1.5,2,3,5))

#16
c(1:100)[5]

#17
sd(c(1:100)) 

#18
c(50,100,150,210) > 200

#19
s <- c('BWL', 'VWL', 'WI')

#20
str(s)

#21

#22
Gehalt <- data.frame(Alter = c(23,35,25), Einkommen = c(1000,2000,1500), Geschlecht = c('m','w','w'))

#23
dim(Gehalt)

#24
getwd()
# "C:/Users/aster/R Projects/Advanced Business Analytics"

#25
# get a sample

#26 
sample(c(1:100), 10)
sample(c(1:100), 10, replace = TRUE)

#27
boxplot(rnorm(100, mean = 50, sd = 10))

#28
data <- data.frame(A = rnorm(100), B = rnorm(100), C = rnorm(100), D = rnorm(100))
boxplot(data)

#29
boxplot(data, col = 'red')

#30
summary(airquality)
head(airquality)

#31
library(mosaic)

#32
airquality$Wind

#33
airquality %>% 
  select(Wind, Ozone)

#34
air <- data.frame(airquality %>%
  select(Ozone, Wind) %>%
    mutate(Solar.R = airquality$Solar.R))

#35
z <- data.frame(x = c(1,2,3), y = c(4,NA,5))
na.omit(z)

#36
# na.omit handles missing values by deleting the respective row

#37
airquality %>% 
  filter(airquality$Wind > 10)

#38
text <- c('Hallo,', 'wie geht es dir?', 'Mir geht es gut.')

#39
text <- data.frame(Zeile = row_number(text), text = text)

#40
text %>%
  unnest_tokens(text, text, token = "words")











