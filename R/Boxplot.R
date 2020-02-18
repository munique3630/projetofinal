# Script para manipulação de dados estatisticos ---#
# BAXPLOT---#
#18/02/2020#
#-----------------------------------------------------------#

#sempre colocar os pacotes que precisa no inicio
library(ggplot2)

#salvar a tabela no script
dados <- read.table("./dados/exp_algas.txt",header = TRUE)
dados

#conferir se esta reconhecendo os nomes das colunas
#Para evitar ter que digitar dados$nome utiliza-se a função attach()
attach(dados)
names(dados)

#Grafico boxplot usando a funcao ggplot
ggplot(dados, aes(x=X, y=Y)) +
  geom_boxplot() +
  theme_classic() +
  geom_boxplot(fill="gray") +
  labs(title="",x="", y = "Settlements") +
  geom_jitter(shape=16, position=position_jitter(0.2)) +
  scale_y_continuous(limits=c(0,15), breaks = seq(0,15,3))

#salvar o grafico png
png("figuras/figura01.png", res = 300, width = 2400, height = 1200)
ggplot(dados, aes(x=X, y=Y)) +
  geom_boxplot() +
  theme_classic() +
  geom_boxplot(fill="gray") +
  labs(title="",x="", y = "Settlements") +
  geom_jitter(shape=16, position=position_jitter(0.2)) +
  scale_y_continuous(limits=c(0,15), breaks = seq(0,15,3))
dev.off()

# modelo de boxplot no pacote base do R
dados01 <- read.table("./dados_alga/01exp_algas.txt",header = TRUE)
dados01

trat.cont <- c(13, 06)
boxplot(dados01,
        main = "",
        xlab = "",
        ylab = "settlement",
        names.arg = c("tratament", "control"),
        col = "gray",
        las = 1,
        scale(dados01, center = FALSE, scale = FALSE),
        horiz = FALSE)

?boxplot
#-----------------------------------------#
