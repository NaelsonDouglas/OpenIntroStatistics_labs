#Organizando o ambiente
setwd("/home/naelsondouglas/Desktop/Matérias/Estatística/Laboratórios/2")
download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
load("kobe.RData")


#1. Descreva a distribuição das sequências de arremessos. 
#Qual é o comprimento de sequência típico para o arremessador independente simulado com um percentual de arremesso de 45%?

#Sequência típica seria a moda?

#Função para calcular a moda. R não tem uma função pre-definida.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(calc_streak(sim_basket))

#Dá zero e fica sem graça. Vamos remover as sequências zeradas do espaço para ver algum número
getmode(seqs_sim[seqs_sim!=0])

#Quão longa é a sequência mais longa de cestas em 133 arremessos?
max(seqs_sim)


#02 Se você rodasse a simulação do arremessador independente uma segunda vez, como você acha que
# seria a distribuição de sequências em relação à distribuição da questão acima? Exatamente a mesma?
#   Mais ou menos parecida? Completamente diferente? Explique seu raciocínio.

print("Muito parecidas. Nâo idênticas, porém parecidas. Os espaços amostrais teriam a mesma dimensão e seriam simulados com as mesmas probabilidades, logo seriam muito semelhantes")


# 3. Como a distribuição dos comprimentos de sequência de Kobe Bryant, analisada na página 2, se
# comparam à distribuição de comprimentos de sequência do arremessador simulado? Utilizando
# essa comparação, você tem evidência de que o modelo das mãos quentes se ajusta aos padrões de
# arremessos de Kobe? Explique.

print("Olhando os sumários e os boxplots (ou apenas o boxplot), podemos ver que os arremessos do Kobe são sumarizados de forma
semelhante ao modelo de eventos independentes. Só os outliers(Max) que são um pouco diferentes, mas como o nome já diz: eles são outliers. 
Os quartis dentro dos boxplots se encaixam perfeitamente")
summary(seqs_sim)
summary(seqs_kobe)
boxplot(seqs_sim,seqs_kobe)


# 4. Quais conceitos do livro são abordados neste laboratório? Quais conceitos, se houver algum, que
# não são abordados no livro? Você viu esses conceito em algum outro lugar, p.e., aulas, seções de
# discussão, laboratórios anteriores, ou tarefas de casa? Seja específico em sua resposta.
print("Questão pedindo feedback do livro Openintro. Eu estudei pelo livro do Marcos Magalhães, então não tem como dar feedback do openintro")



#Plotando o script em .PDF
#Essa linha fica comentada porque ela ao ser chamada executa o script, mas ela mesma tá escrita no script. Isso causaria um loop eterno
#Chamo ela pelo console, deixando aqui comentada mesmo só para registro
#As vezes dá erro na hora de baixar o dataset, é só tentar de novo.
#rmarkdown::render("ex-2.R")
