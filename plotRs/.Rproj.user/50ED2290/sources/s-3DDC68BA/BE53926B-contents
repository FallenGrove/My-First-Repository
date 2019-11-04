#' tests out classes

#notice that setclass includes the class data within () and not {}
rsChart <- setClass(
  #sets the name for the class
  "rsChart",

  #define the slots
  slots = c(
    location = "numeric",
    velocity = "numeric",
    active = "logical"
  ),

  #set the default value for the slots (optional)
  prototype = list(
    location = c(0,0),
    active = TRUE,
    velocity = c(0,0)
  ),

  #make a function to test if the data is consistent
  #will not be called if there is an initialization function!!
  validity = function(object)
  {
    if(sum(object@velocity^2)>100)
    {
      return("the velocity level is out of bounds")
    }
    return(TRUE)
  }

)
