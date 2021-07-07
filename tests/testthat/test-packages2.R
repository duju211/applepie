test_that("get_packages2() works", {
  vcr::use_cassette("packages2", {
    pkgs <- get_packages2("maelle")
  })
  expect_vector(pkgs, character())
})

test_that("get_packages2 errors well", {
  withr::local_envvar("SECRET_PLANET_TOKEN" = "")
  expect_snapshot_error(get_packages2("maelle"))
})

test_that("get_packages() works", {
  skip_if_not_beyonce()
  vcr::use_cassette("blabla", {
    pkgs <- get_packages("maelle")
  })
  expect_vector(pkgs, character())
})
