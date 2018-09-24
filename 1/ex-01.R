source("http://www.openintro.org/stat/data/cdc.R")

##Minha vez

# 01)
plot(cdc$weight ~ cdc$wtdesire)

# 02) 
wdiff = cdc$weight - cdc$wtdesire

# 03)
#wdiff é dado discreto. Se for zero, significa que a pessoa está no peso que deseja
#Se wdiff for negativo, significa que a pessoa quer engordar, se for positivo, quer emagrecer.


# 04)
hist(wdiff, breaks=30)

#No geral as pessoas estão majoritariamente satisfeitas com seu peso
#Porém entre os não satisfeitos, a maioria quer emagrecer

# 05)
cdcgenderdiff <- cdc$weight - cdc$wtdesire ~ cdc$gender
boxplot(cdcgenderdiff)

summary(subset(cdc$weight - cdc$wtdesire, cdc$gender == "m"))
summary(subset(cdc$weight - cdc$wtdesire, cdc$gender == "f"))

#Homens no geral estão mais satisfeitos (ou mais próximos do que consideram ideal) em relação ao seu peso


# 06)
mean_weight <- mean(cdc$weight)
mean_weight

dv_weight = sd(cdc$weight)
dv_weight

outweighted = subset(cdc$weight, cdc$weight > mean_weight + dv_weight | cdc$weight < mean_weight - dv_weight)

ratio = length(outweighted)/ length(cdc$weight)
ratio




#07
#Cara...eu li um pouquinho do openintro, um pouquinho do livro da disciplina, um pouquinho do youtube...tá tudo misturado na cabeça agora
#Para responder essa pergunta eu precisaria reler o capítulo do livro tomando nota em "o que tem e o que não tem"
#Mas isso não me serviria para aprender nada e só para responder essa questão. Deixa para a próxima

                  




