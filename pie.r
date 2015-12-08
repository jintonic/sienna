slices <- c(carv, oilv,extv, fuev, insv)
lbls <- c("Car", "Oil", "Exterior", "Fuel", "Insurance")
pdf("pie.pdf")
pie(slices, labels = lbls, main="Total cost: totv")
