dat <- scan("pie.dat")
lbl <- c("Oil", "Fuel", "Insurance", "Exterior", "Car")
pct <- round(dat/sum(dat)*100)
lbl <- paste(lbl, pct) # add percents to labels
lbl <- paste(lbl,"%",sep="") # ad % to labels
png("pie.png")
pie(dat, labels=lbl, main=sprintf("Total: $%.0f",sum(dat)))
