download.file("http://www.openintro.org/stat/data/ames.RData", destfile = "ames.RData")
load("ames.RData")
area <- ames$Gr.Liv.Area
price <- ames$SalePrice

#1
samp <- sample(price, 50)

mean(samp)

#2

sample_means_50 <- rep(NA, 5000)
for (i in 1:5000) {
  sample_means_50[i] <- mean(sample(price, 50))
}

hist(sample_means_50)
mean(sample_means_50)
sd(sample_means_50)
mean(price)

#3

sample_means_150 <- rep(NA, 5000)
for (i in 1:5000) {
  sample_means_150[i] <- mean(sample(price, 150))
}

hist(sample_means_150, breaks=25)
mean(sample_means_150)
sd(sample_means_150)
print("A distribuição é aproximadamente normal")
4
print("com 150 amostras tem uma dispersão menor.Para termos a maior precisão possível, precisamos de uma dispersão menor e,logo uma amostra maior")

#5
print("Questão perguntando feedback do livro que não li...")