source("http://www.openintro.org/stat/data/arbuthnot.R")
arbuthnot
dim(arbuthnot)
names(arbuthnot)
arbuthnot$boys
plot(x = arbuthnot$year,y = arbuthnot$girls)
plot(x = arbuthnot$year,y = arbuthnot$girls, type="l")
?plot
arbuthnot$girls + arbuthnot$boys
plot(arbuthnot$year, arbuthnot$girls + arbuthnot$boys, type = "l")
arbuthnot$boys / arbuthnot$girls

arbuthnot$boys/(arbuthnot$boys + arbuthnot$girls)



#Proporção de meninos em relação ao tempo
plot(arbuthnot$year, y=arbuthnot$boys/(arbuthnot$boys + arbuthnot$girls), type = "l")


#Minha vez
source("http://www.openintro.org/stat/data/present.R")

# 1)

length(present$year)
dim(present)
names(present)


# 2)
#...é a mesma coisa, mas em períodos diferentes


#3)
total <- sum(present$boys + present$girls)

sum(present$boys )/ total > sum(present$girls )/ total

# 4)
plot(present$year, present$girls / present$boys)
#Para ser sincero consegui concluir nada não a partir desses dados

#5)
present$year[max(present$boys + present$girls)]
subset(present$year, present$boys + present$girls==max(present$boys + present$girls))
