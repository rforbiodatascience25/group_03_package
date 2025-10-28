#' Creating random DNA
#'
#' @param random_dna2 desired lenght of DNA to create
#'
#' @returns Returns a random DNA-like sequence with the input lenght
#' @export
#'
#' @examples 10 is the input by the user, the function will create a one continue
#'string of random DNA-like with a lenght of 10 nucleotide, example of an output: ACCTGAAGCT
#'
random_dna1 <- function(random_dna2){
  random_dna3 <- sample(c("A", "T", "G", "C"), size = random_dna2, replace = TRUE)
  random_dna4 <- paste0(random_dna3, collapse = "")
  return(random_dna4)
  }

