set.seed(1909)
x <- rnorm(15, mean = rep(1:3, each = 5), sd = 0.2)
y <- rnorm(15, mean = rep(c(1, 2), each = 5), sd = 0.2)
plot(x, y, col = "blue", pch = 19, cex = 1)
text(x + 0.05, y + 0.05, labels = as.character(1:15))


data.frame(x=x,
           y=y)->tabela
kmodelo=kmeans(x=tabela,centers = 3)
