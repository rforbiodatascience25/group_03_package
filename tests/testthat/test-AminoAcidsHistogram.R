test_that("AminoAcidsHistogram should return a ggplot2::ggplot object", {
  plot = AminoAcidsHistogram('QHHPKHVAFKLGFAVGSTKSYHKFLSGHNV')
  expect_s3_class(plot, "ggplot2::ggplot")
})

test_that("AminoAcidsHistogram should NOT return a lm object", {
  plot = AminoAcidsHistogram('QHHPKHVAFKLGFAVGSTKSYHKFLSGHNV')
  expect_error(expect_s3_class(plot, "lm"))
})
