library(ape)
data(bird.orders)
### Some random data to compare piecharts and thermometres:
tr <- rcoal(15)
x <- runif(14, 0, 0.33)
y <- runif(14, 0, 0.33)
z <- runif(14, 0, 0.33)
x <- cbind(x, y, z, 1 - x - y - z)
layout(matrix(1:2, 1, 2))
plot(tr, "c", FALSE, no.margin = TRUE)
nodelabels(pie = x, cex = 1.3)
text(4.5, 15, "Are you \"pie\"...", font = 4, cex = 1.5)
plot(tr, "c", FALSE, no.margin = TRUE)
nodelabels(thermo = x, col = rainbow(4), cex = 1.3)
text(4.5, 15, "... or \"thermo\"?", font = 4, cex = 1.5)
layout(matrix(1))