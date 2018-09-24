download.file("http://www.openintro.org/stat/data/atheism.RData", destfile = "atheism.RData")
load("atheism.RData")

print("Questão 1")

spain05 <- subset(atheism, nationality == "Spain" & year == "2005")

spain12 <- subset(atheism, nationality == "Spain" & year == "2012")

inference(spain12$response, est = "proportion", type = "ci", method = "theoretical", success = "atheist", conf = 0.95)
inference(spain05$response, est = "proportion", type = "ci", method = "theoretical", success = "atheist", conf = 0.95)

print("Os intervalos de confiança se cruzam, logo não há evidências para rejeitar a hipótese nula.")


print("1 - B")      
a <-subset(atheism, nationality == "United States" & year == "2005")
b <-subset(atheism, nationality == "United States" & year == "2012")
inference(a$response, type = "ci",est = "proportion",  method = "theoretical", success = "atheist", conf = 0.95)
print("Sem sobreposição de intervalos, logo há evidências contra a hipótese nula.")





