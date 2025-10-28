#' convert T into U
#'
#' @param DNA_sequence Original DNA sequence that we wish to convert
#'
#'
#' @returns It returns the associated RNA sequence
#' @export


convert_T_U <- function(DNA_sequence){
  RNA_sequence <- gsub("T", "U", DNA_sequence)
  return(RNA_sequence)
}
