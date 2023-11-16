

maps <- read.csv("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", sep =";")
#1.3
maps$Latitude <- gsub("N","",maps$Latitude)
#1.4
idx <- grep("W", maps$Longitude)
#1.5
maps$Longitude <- gsub("[EW]","",maps$Longitude)
#1.6
maps$Year <- gsub("AD","",maps$Year)
maps$Year <- as.numeric(maps$Year)
#1.7
maps$Longitude <- as.numeric(maps$Longitude)
maps$Latitude <- as.numeric(maps$Latitude)
#1.8
hist(maps$Year, breaks = 10)
#1.9
maps$Longitude[idx] <- maps$Longitude[idx] * (-1)
#1.10
finalResult <- data.frame(
  Longitude = maps$Longitude,
  Latitude = maps$Latitude,
  Year = maps$Year
)