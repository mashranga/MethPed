#####################################################################################
## Plot function to MethPed
#####################################################################################
"plot.methped"
#' Plot conditional probability of samples that belongs to different tumor subtypes.
#' @param x Object in "methped" class. Output of function \link[MethPed]{MethPed}.
#' @param ... More arguments from function \link[graphics]{barplot}.
#' @return Object in "methped" class. Output of function \link[MethPed]{MethPed}.
#' @examples
#'
#' #################### Loading sample data
#' data(MethPed_sample)
#'
#' #################### Applying MethPed to sample data
#' res<-MethPed(MethPed_sample)
#'
#' #################### Plot conditional probability
#' plot(res)
#'
#' @export
plot.methped <- function(x,...)
{
  par(mai = c(1, 1, 1, 2), xpd=TRUE)
  mat<-t(x$predictions)
  mycols <- c("green",rainbow(nrow(mat),start=0,end=1)[nrow(mat):1],"red")

  barplot(mat,  col = mycols,
          beside=FALSE,axisnames=TRUE,
          ylim=c(0,1),xlab= "Sample",ylab="Probability",...)

  legend( par('usr')[2],1,
          legend = rownames(mat),fill = mycols,xpd = TRUE,bty="n")
  par(resetPar())
}


#####################################################################
## Function to reset parameter
#####################################################################
# Code concept : Mohammad Tanvir Ahamed
# Maintain     : Mohammad Tanvir Ahamed
# Year         : 2015
#####################################################################
resetPar <- function()
{
  dev.new()
  op <- par(no.readonly = TRUE)
  dev.off()
  op
}
