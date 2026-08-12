## Preprocess data, write TAF data tables

## Before: assessments (boot/data)
## After: dep14.csv, dep17.csv, dep20.csv, dep23.csv (data)

library(TAF)
library(FLR4MFCL)

mkdir("data")

# Read assessment results
cat("Reading 2014 assessment\n")
rep14 <- suppressWarnings(read.MFCLRep(finalRep("boot/data/assessments/2014")))
dep14 <- as.data.frame(SBSBF0(rep14))[c("year", "data")]
names(dep14)[2] <- "dep14"
cat("Reading 2017 assessment\n")
rep17 <- read.MFCLRep(finalRep("boot/data/assessments/2017"))
dep17 <- as.data.frame(SBSBF0(rep17))[c("year", "data")]
names(dep17)[2] <- "dep17"
cat("Reading 2020 assessment\n")
rep20 <- read.MFCLRep(finalRep("boot/data/assessments/2020"))
dep20 <- as.data.frame(SBSBF0(rep20))[c("year", "data")]
names(dep20)[2] <- "dep20"
cat("Reading 2023 assessment\n")
rep23 <- read.MFCLRep(finalRep("boot/data/assessments/2023"))
dep23 <- as.data.frame(SBSBF0(rep23))[c("year", "data")]
names(dep23)[2] <- "dep23"

# Write TAF tables
write.taf(dep14, dir="data")
write.taf(dep17, dir="data")
write.taf(dep20, dir="data")
write.taf(dep23, dir="data")
