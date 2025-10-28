#' Creating random DNA
#'
#' @param random_dna2 desired lenght of DNA to create
#'
#' @returns Returns a random DNA-like sequence with the input lenght
#' @export
#'
random_dna1 <- function(random_dna2){
  random_dna3 <- sample(c("A", "T", "G", "C"), size = random_dna2, replace = TRUE)
  random_dna4 <- paste0(random_dna3, collapse = "")
  return(random_dna4)
  }

