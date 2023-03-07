###Practica 5###
numArtefactos <- c(17, 54, 10, 34, 90, 33, 49, 82, 12, 23, 56, 78, 44, 102, 10, 53, 4, 28, 37, 95)
typeof(numArtefactos) #Los datos los usa como double#
numArtefactos_int <- as.integer(numArtefactos)
mean(numArtefactos)
median(numArtefactos)
moda <- function(numArtefactos_int) {
  u <- unique(numArtefactos_int)
  tab <- tabulate(match(numArtefactos_int, u))
  u[tab == max(tab)]
}
moda(numArtefactos_int)
  
