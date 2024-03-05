#A
warpbreaks

#1
print(is.numeric(warpbreaks$breaks))
print(is.integer(warpbreaks$breaks))


print(is.numeric(warpbreaks$wool))
print(is.integer(warpbreaks$wool))

print(is.numeric(warpbreaks$tension))
print(is.integer(warpbreaks$tension))

#2
warpbreaks <- data.frame(warpbreaks)

warpbreaks <-lapply(warpbreaks,
                    as.integer)
warpbreaks




#B
#1
txt <- readLines("LabExercise/exampleFile.txt")
txt

#2
com <- grep("^#", txt)
(dat <- txt[!com])

#3






