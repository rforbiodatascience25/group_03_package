test_that("codon conversion to aa works", {
  codons <- c("UUU", "GAC", "AAG")

  expected <- "FDK"

  result <- codons_into_aa(codons)

  # Test if result matches expectation
  expect_equal(result, expected)
})
