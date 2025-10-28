#' Codon reader
#'
#' @param sequence String of DNA sequence.
#' @param start Intereger. Starting position in sequence for reading codons (default=1).
#'
#' @returns Character vector containing the codons.
#' @export
#'
#' @examples
#' my_sequence <- "ATGCTAGCGTACTAG"
#' read_codons(my_sequence)
#' read_codons(my_sequence, start = 2)
#'
read_codons <- function(sequence, start = 1){
  sequence_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
