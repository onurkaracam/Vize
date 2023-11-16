

maps <- read.csv("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", sep =";")
#1.3
maps$Latitude <- gsub("N","",maps$Latitude)
#1.4
idx <- grep("W", maps$Longitude)

