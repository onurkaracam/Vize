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
test_that("'maps' adli data.frame'in ilk sutunun adi 'City' midir", {
  expect_equal(colnames(maps)[1], "City")
})
#2.8
test_that("'maps' adli data.frame'in 5. sutunun adinda 'Title' kelimesi geciyor mu", {
  expect_match(colnames(maps)[5], "Title",)
})
#2.9
test_that("'maps' adli data.frame'in 'Latitude' adli sutunu numeric degerlerden olusuyor mu", {
  expect_true(all(sapply(maps$Latitude, is.numeric)))
  #"31.2001" R dilinde numeric olarak tan??mlanmaz.Karakter dizisidir.
})
#2.10
test_that("'maps' adli data.frame'in 'Longitude' adli sutunu numeric degerlerden olusuyor mu", {
  expect_true(all(sapply(maps$Longitude, is.numeric)))
})
#2.11
test_that("Test : 'idx' nesnesi Global Workspace'te mevcut olmal??d??r", {
  expect_true(exists("idx"))
})
#2.12
test_that("Test : 'idx' nesnesinin tipi (class'??) 'integer' midir", {
  expect_equal(class(idx), "integer")
})
#2.13
test_that("'maps' adli data.frame'in 'Year' adli sutunu numeric degerlerden olusuyor mu", {
  expect_true(all(sapply(maps$Year, is.numeric)))
})
#2.14
test_that("'maps' adli data.frame'in 'Longitude' adli sutununun belirli elemanlari negatif numeric degerler iceriyor mu", {
  expect_true(all(sapply(c(maps$Longitude[3], maps$Longitude[9], maps$Longitude[10]), function(x) is.numeric(x) && x < 0)))
})
#2.15
test_that("Test : 'finalResult' adli data.frame var, 3 sutunlu ve sutun isimleri dogru mu", {
  expect_equal(ncol(finalResult), 3)
  
  expect_equal(colnames(finalResult), c("Longitude", "Latitude", "Year"))
})