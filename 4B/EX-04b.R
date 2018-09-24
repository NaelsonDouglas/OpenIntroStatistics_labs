download.file("http://www.openintro.org/stat/data/ames.RData", destfile = "ames.RData")
load("ames.RData")
area <- ames$Gr.Liv.Area


#1
n_samps = 50
s_size = 60
s_mean <- rep(NA, n_samps)
s_sd <- rep(NA, n_samps)

for (i in 1:n_samps) {
  samp <- sample(area, s_size)
  s_mean[i] <- mean(samp)
  s_sd[i] <- sd(samp)
}

samp_lower <- s_mean-1.96 * s_sd/sqrt(s_size)
samp_upper <- s_mean+1.96 * s_sd/sqrt(s_size)

plot_ci(samp_lower, samp_upper, mean(area))


#2
#90%, com um valor crítico de 1.645

#3
samp_lower <- samp_mean-1.645 * samp_sd/sqrt(samp_size)
samp_upper <- samp_mean+1.645 * samp_sd/sqrt(samp_size)

plot_ci(samp_lower, samp_upper, mean(area))


#4
#Feedback do livro, bleh


