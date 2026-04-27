test_that("FizzBuzz output correct length", {
  expect_equal(length(FizzBuzz(10)), 10)
  expect_equal(length(FizzBuzz(20)), 20)
})

test_that("FizzBuzz bad inputs", {
  expect_error(FizzBuzz(-15))
  expect_error(FizzBuzz(0))
  expect_error(FizzBuzz(Inf))
})
