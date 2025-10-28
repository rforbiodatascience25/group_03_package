test_that("random_dna1 returns a string of correct length", {
  set.seed(123) # to make the result reproducible
  result <- random_dna1(10)
  expect_type(result, "character")
  expect_equal(nchar(result), 10)
})

test_that("random_dna1 only contains A, T, G, and C", {
  set.seed(42) #If you don’t set a seed, every time you run the code, you’ll get different random results.
  result <- random_dna1(50)
  expect_true(all(strsplit(result, "")[[1]] %in% c("A", "T", "G", "C")))
})

test_that("random_dna1 works with length 1", {
  set.seed(1)
  result <- random_dna1(1)
  expect_true(result %in% c("A", "T", "G", "C"))
})
