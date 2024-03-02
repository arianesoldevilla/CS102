Mov1 <- read_csv("moviereviews/Luca.csv")
Mov2 <- read_csv("moviereviews/poor_things.csv")
Mov3 <- read_csv("moviereviews/x.csv")
Mov4 <- read_csv("moviereviews/Marvels.csv")
Mov5 <- read_csv("moviereviews/Past_Lives.csv")
Mov6 <- read_csv("moviereviews/Barbie.csv")
Mov7 <- read_csv("moviereviews/The_Creator.csv")
Mov8 <- read_csv("moviereviews/Napoleon.csv")
Mov9 <- read_csv("moviereviews/Fury.csv")
Mov10 <- read_csv("moviereviews/Midsommar.csv")


MergedMovs <- rbind(Mov1, Mov2, Mov3, Mov4, Mov5, Mov6, Mov7, Mov8, Mov9, Mov10)


write.csv(MergedMovs, "MergedMovies.csv", row.names = FALSE)
