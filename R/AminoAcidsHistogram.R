#' Make a histogram plot out of an amino acid string
#'
#' @param AminoAcids String of amino acids
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#'
#' @returns ggplot2::ggplot
#' @export
#'
#' @examples AminoAcidsHistogram('QHHPKHVAFKLGFAVGSTKSYHKFLSGHNV')
AminoAcidsHistogram <- function(AminoAcids = ''){
  UniqueAminoAcids <- AminoAcids |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(UniqueAminoAcids, function(amino_acid) stringr::str_count(string = AminoAcids, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["AminoAcids"]] <- rownames(counts)

  histogram <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AminoAcids, y = Counts, fill = AminoAcids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(histogram)
}


