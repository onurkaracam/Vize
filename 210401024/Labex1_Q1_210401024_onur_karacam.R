

maps = read.csv("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", sep =";")

maps$Latitude <- gsub("N","",maps$Latitude)

idx <- grep("W", maps$Longitude)

maps$Longitude <- gsub("[EW]","",maps$Longitude)

maps$Year <- gsub("AD","",maps$Year)

maps$Year <- as.numeric(maps$Year)

maps$Longitude <- as.numeric(maps$Longitude)

maps$Latitude <- as.numeric(maps$Latitude)

hist(maps$Year, breaks = 10)

maps$Longitude[idx] <- maps$Longitude[idx] * (-1) 

finalResult <- data.frame(
  Longitude = maps$Longitude,
  Latitude = maps$Latitude,
  Year = maps$Year
)
