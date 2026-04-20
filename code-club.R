# R code starts here. Don't write anything below here other than R commands and R comments. Thus, it will be possible for students to copy/paste and run for yourself. 

# Assign the number 5 to an object called a 
a <- 5

# Multiply a by 10 and assign the result to an object called b 
b <- a*10

# The caret character ^ is used in R to raise a number to a power 
# (similarly in excel and other programming languages too)
# calculate the square of a and the square of b. 
a^2
b^2

# calculate the cube of a and the cube of b. 
a^3
b^3

# Starting with 1 bacterial cell, 
# calculate how many cells there will be after 3 generation times 
# (each cell will divide into 2)
# Perform this calculation as a simple arithmetic

1*2*2*2

# Now perform the same calculation using a more elegant method

1 * 2^3

# Find out the doubling time of E. coli under optimal conditions, in minutes. 
# Assign the doubling time to an object called Td

Td <- 20

# Work out how many times an E. coli could double in 4 hours

(4*60)/Td

# Calculate how many E. coli cells could have grown from 1 cell in 4 hours

1 * 2 ^ ((4*60)/Td)

# Calculate how many E. coli cells could have grown from 1 cell in 4 days

1 * 2 ^ ((24*4*60)/Td)

# Find out the mass of the earth in Kg. Assign it to an object called earth.kg



# find out the mass of an E.coli cell in Kg. Assign it to an object called E.coli.kg



# Compare the mass of the earth and the E. coli cells which grew over 4 days.



# Next, we will look at how to generalise these calculations and make more realistic.

# Import the growth curve data generated in Excel last time
# Tip: Simplify the excel file to only have the data required, then export it as CSV - into your project folder
# Use read.csv() to open the file and save it to an object called excel_growth


# Plot the data from the excel_growth object


# Plot the data from the excel_growth object again, this time with log axis or log transform the data


# Now, let's start again and create the growth curve from scratch in R.
# Try this command:
1:10
# Create a vector for the time series in hours, and call it time_h; up to 100
# Remember that assignment is done like this


# create constants for the logistic growth equation from the values we used before in excel, for Pseudomonas putida:
# r	: intrinsic rate of increase (per hour)

# K	carrying capacity (number of individuals)

# N0 population size at time zero


# Create a vector for number of cells in unrestrained growth and call it n_unrestrained . 
# Use the same calculations as last week to calculate a vector for the population growth
# This turned out to be trickier than I thought, so here is a solution

# pre-assign the object n_unrestrained as a vector
n_unrestrained <- vector()
# set the first value according to the N0 we decided
n_unrestrained[1] <- N0 + r*N0*(1-N0/K)

# set the values 2 to 100 by using a loop
# This is necessary because the equation calculates each step off the prior result.
for(n in 2:100) {
  n_unrestrained[n] <- n_unrestrained[n-1] + r*n_unrestrained[n-1]
}

# Now let's improve this by using the logistic equation to make it more realistic. 
# You should be able to adapt the above code to achieve it
# Create a vector for the number of cells according to the logistic growth model, call it n_logistic



# compare the results to what we got in Excel


# plot the results from logistic growth


# improve the plot with suitable axis titles



# Now that we have the calculations figured out, it is easy to apply them to different scenarios.
# Calculate logistic growth for a different organism with different values of r and K
# You will need to set those variables again, then re-run the logistic calculation loop.
# Assign the result to a new vector called species_2

# use the lines() command to add the species 2 growth onto the same plot, in a different colour. 


# Experiment with different values of r and K
# Can you think of any way to generalise the code more, to make these comparisons more convenient?


`

