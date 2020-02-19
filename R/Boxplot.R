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
png("figuras/figura02.png", res = 300, width = 2400, height = 1200)
ggplot(dados, aes(x=X, y=Y)) +
  geom_boxplot() +
  theme_classic() +
  geom_boxplot(fill="gray") +
  labs(title="",x="", y = "Settlements") +
  geom_jitter(shape=16, position=position_jitter(0.2)) +
  scale_y_continuous(limits=c(0,15), breaks = seq(0,15,3))
dev.off()

# modelo de boxplot no pacote base do R
algas <- read.table("./dados/01exp_algas.txt",header = TRUE)
algas

trat.cont <- c(13, 06)
boxplot(Y ~ X,
        data = algas,
        main = "",
        xlab = "",
        ylab = "settlement (N  individuals)",
        ylim = c(0,15),
        par(mar=c(3,5.3,4.5,3.5)),
        cex.axis=1.1,cex.lab=1.2,cex.names=1.1,
        names.arg = c("treatment", "control"),
        col = "gray",
        las = 1,
        scale(dados01, center = FALSE, scale = FALSE),
        horiz = FALSE)

#cria um arquivo png
png("figuras/figura03.png", res = 300, width = 2400, height = 1200)
boxplot(Y ~ X,
        data = dados,
        main = "",
        xlab = "",
        ylab = "settlement (N individuals)",
        ylim = c(0,15),
        names.arg = c("treatment", "control"),
        col = "gray",
        las = 1,
        scale(dados01, center = FALSE, scale = FALSE),
        horiz = FALSE)
#para salvar o gráfico como imagem png
dev.off()

?boxplot
#-----------------------------------------#
