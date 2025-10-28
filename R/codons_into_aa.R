

#' Conversion from codons to amino acids
#'
#' @param codons table that helps translating codons into amino-acids
#'
#' @returns the amino-acid sequence
#' @export
#'

codons_into_aa <- function(codons){
  aa_sequence <- paste0(data_codon[codons], collapse = "")
  return(aa_sequence)
}
