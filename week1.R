# week1.R
# Week 1
# Bastiaan Quast
# bquast@gmail.com

# import data
tab = read.csv("msleep_ggplot2.csv")

# basic info
class(tab)
head(tab)
dim(tab)

# add a final number
c(tab$sleep_total, 1000)

# plotting
plot(tab$brainwt, tab$sleep_total)
plot(tab$brainwt, tab$sleep_total, log="x")

# summary
summary(tab$sleep_total)

# mean for greater than 18
mean(tab[ tab$sleep_total > 18, ]$sleep_total)

# which()
which(tab$sleep_total > 18)
tab$sleep_total[ which(tab$sleep_total > 18)[1] ]

which(tab$sleep_total > 18 & tab$sleep_rem < 3)
inb