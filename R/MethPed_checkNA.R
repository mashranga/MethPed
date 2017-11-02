#####################################################################################
## Function to Check missing valus in data
#####################################################################################
###########################################
# Code concept : Mohammad Tanvir Ahamed
# Maintain     : Mohammad Tanvir Ahamed
# Year         : 2015
#############################################
"checkNA"
#' Check missing valus in dataset
#' @param data Object in class data.frame or matrix or ExpressionSet.
#' @import Biobase
#' @examples
#' #################### Loading and view sample data
#' data(MethPed_sample)
#' head(MethPed_sample,10)
#'
#' ################### Check missing value
#' checkNA(MethPed_sample)
#' @export
checkNA <- function(data) { UseMethod("checkNA",data)}


#####################################################################################
## Main checkNA Function and different method (Generic is checkNA)
######################################################################################
##########################################
# Method : default
#' @export
checkNA.default<- function(data) {
  res<-sapply(data, function(x) sum(is.na(x)))
  res
}

##########################################
# Method : data.frame
#' @export
checkNA.data.frame<-function(data)
{
  res<-checkNA.default(data)
  res
}

##########################################
# Method : matrix
#' @export
checkNA.matrix<-function(data)
{
  mat <- data.frame(data)
  mat$probeName <- rownames(mat)
  rownames(mat) <- NULL
  res<-checkNA.data.frame(mat)
  res
}

##########################################
# Method : ExpressionSet
#' @export
checkNA.ExpressionSet<-function(data)
{
  mat <- exprs(data)
  res<-checkNA.matrix(mat)
  res
}
