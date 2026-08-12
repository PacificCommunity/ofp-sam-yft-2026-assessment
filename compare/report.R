## Prepare plots and tables for report

## Before: depletion.csv (output)
## After:  depletion.png, depletion_without_23.csv (report)

library(TAF)

mkdir("report")

# Read assessment results
depletion <- read.taf("output/depletion.csv")

# Another data frame excluding 2023
dep.to.20 <- depletion
dep.to.20$dep23 <- NULL
dep.to.20 <- subset(dep.to.20, year %in% 1952:2018)

# Format
col.line <- c(4, 2, 3, 1)
col.grid <- "gray"
labels <- paste(c(2014, 2017, 2020, 2023), "diagnostic model")
n <- length(labels)

# Plot depletion from each assessment
taf.png("depletion")
plot(NA, xlim=c(1952, 2021), ylim=c(0.2, 1), xlab="Year", ylab="SB/SBF=0")
abline(h=seq(0.2, 1.0, by=0.1), col=col.grid)
matlines(depletion[1], depletion[-1], ylim=c(0.2,1), lty=1, lwd=3, col=col.line)
legend("bottomleft", labels, lwd=3, col=col.line, bty="n", inset=0.02,
       y.intersp=1.19)
dev.off()

# Excluding 2023
taf.png("depletion_without_2023")
plot(NA, xlim=c(1952, 2021), ylim=c(0.2, 1), xlab="Year", ylab="SB/SBF=0")
abline(h=seq(0.2, 1.0, by=0.1), col=col.grid)
matlines(dep.to.20[1], dep.to.20[-1], ylim=c(0.2,1), lty=1, lwd=3, col=col.line)
legend("bottomleft", c(labels[-n], ""), lwd=3, col=c(col.line[-n], NA), bty="n",
       inset=0.02, y.intersp=1.19)
dev.off()
