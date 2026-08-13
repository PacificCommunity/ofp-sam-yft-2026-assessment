## Run analysis, write model results

## Before: dep14.csv, dep17.csv, dep20.csv, dep23.csv, dep26.csv (data)
## After:  depletion.csv (model)

library(TAF)

mkdir("model")

# Read individual assessments
dep14 <- read.taf("data/dep14.csv")
dep17 <- read.taf("data/dep17.csv")
dep20 <- read.taf("data/dep20.csv")
dep23 <- read.taf("data/dep23.csv")
dep26 <- read.taf("data/dep26.csv")

# Combine in one data frame
depletion <- merge(merge(merge(merge(
  dep14,
  dep17, all=TRUE),
  dep20, all=TRUE),
  dep23, all=TRUE),
  dep26, all=TRUE)

# Write TAF table
write.taf(depletion, dir="model")
