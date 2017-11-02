#####################################################################################
## Summary function to MethPed
#####################################################################################
"summary.methped"
#' Summary of conditional probability or binary classification of samples that belong to different tumor subtypes.
#' @param object Object in methped class. Output of function \link[MethPed]{MethPed}.
#' @param ... Additional arguments affecting the summary produced
#' @return Object in "methped" class. Output of function \link[MethPed]{MethPed}.
#'
#' @examples
#'
#' #################### Loading sample data
#' data(MethPed_sample)
#'
#' #################### Applying MethPed to sample data
#' res<-MethPed(MethPed_sample)
#'
#' #################### Summary function of MethPed output
#' summary (res)
#'
#' @export
summary.methped<- function(object, ...) {object$predictions}
