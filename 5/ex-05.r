download.file("http://www.openintro.org/stat/data/nc.RData", destfile = "nc.RData")
load("nc.RData")


print("Questão 1")
inference(y = nc$weeks, est = "mean", type = "ci", alternative = "twosided", method = "theoretical")


print("Questão 2")
inference(y = nc$weeks, est = "mean", type = "ci", alternative = "twosided", method = "theoretical", confleve=0.9)


print("Questão 3")
levels(nc$mature)
by(nc$gained, nc$mature, length)

inference(y=nc$gained, x=nc$mature, est="mean", type="ht", null=0, alternative="twosided", method="theoretical",
conflevel=0.95, order=c("younger mom", "mature mom"))

print("H0 -> gap do peso médio entre mães mais novas e mais velhas
HA -> diferenã entre o ganho de peso entre mães mais novas e velhas

Não há evidências para rejeitar a hipótese nula uma vez que nosso p-valor é de 0.1686 ~> 0.05")

print("Questão 4")
by(nc$mage, nc$mature, summary)
print("35 anos")

