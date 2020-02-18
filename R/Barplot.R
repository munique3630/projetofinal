# Script para manipulação de dados estatisticos ---#
# BARPLOT---#
#18/02/2020#
#-----------------------------------------------------------#


# BARPLOT: Exemplos de graficos barplot, pode usar isso para outros exemplos
example ("barplot")

# modelo em BarPlot agrupado
dados01 <- read.table("./dados/01exp_algas.txt",header = TRUE)
dados01

trat.cont <- c(13, 06)
barplot(trat.cont,
        main = "",
        xlab = "",
        ylab = "settlement",
        names.arg = c("tratament", "control"),
        col = "gray",
        horiz = FALSE)


