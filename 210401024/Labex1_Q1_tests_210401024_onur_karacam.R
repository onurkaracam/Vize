library(testthat)

setwd("~/GitHub/Vize/210401024")

source("Labex1_Q1_210401024_onur_karacam.R")

#2.4
test_that("MapsThatChangedOurWorld_StoryMap_Data.csv dosyas?? aktif dizinde mevcut mudur", {
  expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})

#2.5
test_that("'maps' adli degisken Global Workspace'te mevcut mudur", {
  expect_true(exists("maps"))
})
#2.6
test_that("Test : 'maps' nesnesi bir data.frame'dir", {
  expect_true(is.data.frame(maps))
})
#2.7
test_that("'maps' adl?? data.frame'in ilk s??tunun ad?? 'City' midir", {
  expect_equal(colnames(maps)[1], "City")
})