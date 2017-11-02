#####################################################################################
## Function to get missing probe
#####################################################################################
"probeMis"
#' Missing probe names from training data compared with input samples.
#' @param x Object in MethPed class. Output of function \link[MethPed]{MethPed}.
#' @return Object in "methped" class. Output of function \link[MethPed]{MethPed}.
#' @examples
#'
#' #################### Loading sample data
#' data(MethPed_sample)
#'
#' #################### Applying MethPed to sample data
#' res<-MethPed(MethPed_sample)
#'
#' #################### The names of the probes that were included in the original
#'                    # classifier but are missing from the data at hand
#' probeMis(res)
#'
#' @export
probeMis<- function(x) {x$probes_missing}
