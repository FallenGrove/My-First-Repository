#' Uses R.matlab to read .mat data file into R
#'
#' @param name the name of a matlab file
#' @return The R output version of data
#' @examples
#' data = readData('inputData.mat')

readData <- function(name)
{
  library(R.matlab)
  data <- R.matlab::readMat(name)
  return(data)
}
