#need to reference the subdirectory in order for the devtools::document() to find the files
source(".//R//findAvg.R")
source("./R//readData.R")

#import data from chamber matlab file
rsIn = readData('chamData.mat')

#find the average of each chamber for 5 years

master = list()
i = 1

while(i<6)
{
  master[[i]] = findAvg(rsIn,i)
  i = i+1
}


#plot a time series of the data

#changing the margins of the data
par(mar = c(1,1,1,1))
par(mfrow=c(5,1))

#plot the 5 years
for (i in 1:5)
{
  plot(master[[i]])
}
