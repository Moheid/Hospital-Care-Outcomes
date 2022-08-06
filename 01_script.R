# Read the data

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

1. Plot the 30-day mortality rates for heart attack

outcome[, 11] <- as.numeric(outcome[, 11]) # Column 11 for heart attack rates

hist(outcome[, 11]
    ,xlab='Deaths'
    ,main='Hospital 30-Day Death (Mortality) Rates from Heart Attack'
    ,col="lightblue")

2. Finding the best hospital in a state
Write a function called best that take two arguments: the 2-character abbreviated name of a state and an outcome name. The function reads the outcome-of-care-measures.csv file and returns a character vector with the name of the hospital that has the best (i.e. lowest) 30-day mortality for the specified outcome in that state. The hospital name is the name provided in the Hospital.Name variable. The outcomes can be one of “heart attack”, “heart failure”, or “pneumonia”. Hospitals that do not have data on a particular outcome should be excluded from the set of hospitals when deciding the rankings.
