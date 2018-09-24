# pegando os dados
download.file("http://www.openintro.org/stat/data/bdims.RData", destfile = "bdims.RData")
load("bdims.RData")
mdims <- subset(bdims, bdims$sex == 1)
fdims <- subset(bdims, bdims$sex == 0)
fhgtmean <- mean(fdims$hgt)
fhgtsd <- sd(fdims$hgt)

# 1. Agora vamos analisar outras variáveis no conjunto de dados.........
print("Esse exercício 1 minhas respostas ficaram bem confusas, não sei se é porque estou fazendo errado ou porque as questões são confusas mesmo
      Vou submeter o PDF mesmo assim para ficar seguro, depois tento refazer essa questão e submeto novamente.")

# (a) O histograma do diâmetro bi-ilíaco (pélvico) feminino (bii.di) pertence ao gráfico de probabili-
# dade normal de letra __
print("C")
hist(fdims$bia.di)
qqnorm(fdims$bia.di)
qqline(fdims$bia.di)


# (b) O histograma do diâmetro do cotovelo feminino (elb.di) pertence ao gráfico de probabilidade
# normal de letra ___
print("Rapaz...tá parecendo o C também, a qualidade do gráfico no PDF não é das melhores para se olhar direito")
hist(fdims$elb.di)
qqnorm(fdims$elb.di)
qqline(fdims$elb.di)

# (c) O histograma de idade geral (age) pertence ao gráfico de probabilidade normal de letra .
print("D")
hist(bdims$age)
qqnorm(bdims$age)
qqline(bdims$age)

# (d) O histograma de profundidade do peito feminino (che.de) pertence ao gráfico de probabilidade
# normal de letra .
print("Pelo que estou vendo, ficou parecendo com nenhuma das opções.")
hist(bdims$che.de)
qqnorm(bdims$che.de)
qqline(bdims$che.de)



# 2. Perceba que os gráficos de probabilidade normal C e D tem um pequeno padrão passo a passo. Por
# que você acha que eles são assim?
print("Porque são dados discretos")



# 3. Como você pode ver, gráficos de probabilidade normal podem ser utilizados tanto para avaliar a
#normalidade quanto visualizar a assimetria. Crie um gráfico de probabilidade normal para o diâ-
#metro do joelho feminino (kne.di). Baseado neste gráfico de probabilidade normal, você diria que
# essa variável é simétrica, assimétrica à direita ou assimétrica à esquerda? Utiliza um histograma para
# confirmar seu resultado.

hist(fdims$kne.di, breaks=16, probability = TRUE)

x_ <-sort(fdims$kne.di)
fknemean = mean(fdims$kne.di)
fknesd = sd(fdims$kne.di)
y_ <- dnorm(x=x_,  sd=fknesd  ,mean=fknemean)
lines(x=x_,y=y_,col="blue")

qqnorm(fdims$kne.di)
qqline(fdims$kne.di)

print("As medidas de joelho têm uma assimetria acentuada\n Porém caso caso removermos os outliers, ela fica bastante simétrica")

hist(fdims$kne.di[!fdims$kne.di %in% boxplot.stats(fdims$kne.di)$out], breaks = 16,probability = TRUE)
x_ <-sort(fdims$kne.di)
fknemean = mean(fdims$kne.di)
fknesd = sd(fdims$kne.di)
y_ <- dnorm(x=x_,  sd=fknesd  ,mean=fknemean)
lines(x=x_,y=y_,col="blue")


# 4. Quais conceitos do livro são abordados neste laboratório? Quais conceitos, se houver algum, que
# não são abordados no livro? Você viu esses conceito em algum outro lugar, p.e., aulas, seções de
# discussão, laboratórios anteriores, ou tarefas de casa? Seja específico em sua resposta.
print("Questão pedindo feedback do livro que não li.")