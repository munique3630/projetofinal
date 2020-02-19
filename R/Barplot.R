# Script para manipulação de dados estatisticos ---#
# BARPLOT---#
#18/02/2020#
#-----------------------------------------------------------#


# BARPLOT: Exemplos de graficos barplot, pode usar isso para outros exemplos
example ("barplot")

# modelo em BarPlot agrupado
dados01 <- read.table("./dados/01exp_algas.txt",header = TRUE)
dados01

head(dados01)
dim(dados01)
summary(dados01)

names(dados01)
names(dados01)[-1]

trat.cont <- c(114, 32)
barplot(trat.cont,
        main = "",
        xlab = "",
        ylab = "settlement",
        ylim=c(0,120),
        las = 1,
        names.arg = c("treatment", "control"),
        col = "gray",
        horiz = FALSE)


#cria um arquivo png
png("figuras/figura01.png", res = 300, width = 2400, height = 1200)
barplot(trat.cont,
        main = "",
        xlab = "",
        ylab = "settlement",
        names.arg = c("treatment", "control"),
        col = "gray",
        horiz = FALSE)
#para salvar o gráfico como imagem png
dev.off()
