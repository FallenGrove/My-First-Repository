#' Uses inported Rs data to find the average of each year
#'
#' @param data list from imported matlab data
#' @param idx the index of the year you like
#'            1 = 2014
#'            2 = 2015
#'            3 = 2016
#'            4 = 2017
#'            5 = 2018
#' @return average data
#' @examples
#' findAvg(rsIn)

findAvg <- function(data,idx)
{
  #gets the list within the imported list
  dataIn <- data[[1]]

  #get the year of the data
  data_idx <- dataIn[[idx]]

  #gets number of rows of the matrix and adds a NaN column
  data_idx = cbind(data_idx, c(replicate(dim(data_idx)[1],NaN)))

  #for loop to get the average of that row
  for(i in 1:dim(data_idx)[1])
  {
    #omits any NaN
    data_idx[i,4] = mean(na.omit(data_idx[i,]))
  }

  return(data_idx[,4])

}
