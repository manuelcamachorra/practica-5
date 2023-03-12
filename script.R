###Practica 5###
#1#
numArtefactos <- c(17, 54, 10, 34, 90, 33, 49, 82, 12, 23, 56, 78, 44, 102, 10, 53, 4, 28, 37, 95)

typeof(numArtefactos) #Los datos los usa como double#
numArtefactos_int <- as.integer(numArtefactos)
#2#
mean(numArtefactos)
#3#
median(numArtefactos)
#4#
moda <- function(numArtefactos_int) {
  u <- unique(numArtefactos_int)
  tab <- tabulate(match(numArtefactos_int, u))
  u[tab == max(tab)]
}
moda(numArtefactos_int)
#5#  
table(numArtefactos_int) #Se repite unas 2 veces#
#6#
quantile(numArtefactos_int) #El cuartil es 21.5#
#7#
IQR(numArtefactos_int) #El rango intercuartílico es 40#
#8#
rango_artefactos <- range(numArtefactos_int)
rango_artefactos 
#9#
var(numArtefactos_int) #La varianza es 927.1026#

#10#
sd(numArtefactos_int)
sqrt(var(numArtefactos_int))  ##La desviación estandar es 30.44836##
#12#
numArtefactos<- c(17, 54, 10, 34, 90, 33, 49, 82, 12, 23, 56, 78, 44, 102, 10, 53, 4, 28, 37, 95)
numArtefactos_int <- as.integer(numArtefactos)
library(ggplot2)
#13#
vector3 = c(21, 45, 33, 98, 34, 90, 67, 87, 45, 11, 73, 38, 28, 15, 50, 57, 12, 87, 29, 1)
#14#
cv_numArtefactos_int <- sd(numArtefactos_int) / mean(numArtefactos_int) * 100
cv_vector3 <- sd(vector3) / mean(vector3) * 100
#16#
coeficiente_asimetria <- (mean(vector3) - median(vector3)) / sd(vector3)
coeficiente_asimetria

-----------------------------------------------------------------
#Parte 2# 
#Distribucioon de Asimetria Positiva 
vector1 <- c(2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,150)
coeficiente_asimetria <- (mean(vector1) - median(vector1)) / sd(vector1)
coeficiente_asimetria


#Distribución con asimetría negativa:
vector2 <- c(150,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2)
coeficiente_asimetria <- (mean(vector2) - median(vector2)) / sd(vector2)
coeficiente_asimetria

#Distribución simétrica:
vector4 <- c(2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,20)
coeficiente_asimetria <- (mean(vector4) - median(vector4)) / sd(vector4)
coeficiente_asimetria

#17#
kurtosis(vector3)
