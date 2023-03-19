# practica 5
 
#Ejercicio 1. Aplica un contraste de hipótesis basado en la media
a:y1-y1 e y2#

```{r}
set.seed (1)

z = rnorm (100)
x = rpois (100,10.3)
y = rbinom (100, 1, .25)

y1 = 5*z+x*10+rnorm (100,2,1)
y2 = 5*z+x*12+rnorm (100,2,1)

hist (y1)
hist (y2)

t.test (y1)
t.test (y2)

```
One Sample t-test

data:  y1
t = 30.231, df = 99, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
  89.09856 101.61594
sample estimates:
mean of x 
 95.35725 


	One Sample t-test

data:  y2
t = 30.454, df = 99, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
 106.4637 121.3036
sample estimates:
mean of x 
 113.8837 

#Ejercicio 2. ¿Por qué decimos que la correlación lineal es una prueba
de correlación paramétrica?¿En qué se diferencian las pruebas
paramétricas de las no paramétricas?#

Las pruebas paramétricas se diferencian de las no paramétricas en que las primeras requieren ciertas suposiciones sobre la distribución de los datos, mientras que las segundas no hacen suposiciones sobre la distribución subyacente de los datos. Las pruebas paramétricas también se basan en la estimación de parámetros poblacionales a través de los datos muestrales, mientras que las pruebas no paramétricas se basan en estimaciones de orden o rango.

Las pruebas paramétricas suelen ser más potentes cuando se cumplen las suposiciones subyacentes, pero pueden ser menos precisas cuando las suposiciones no se cumplen. Las pruebas no paramétricas son más robustas en términos de cumplimiento de las suposiciones subyacentes, pero pueden ser menos potentes que las pruebas paramétricas en ciertos casos. 

#Ejercicio 3. Calcula la correlación entre las variables almacenadas en la tabla 'data'. ¿Qué variables se encuentran más asociadas?#


```{r}
library(correlation)
resultados = correlation(data_2_)
resultados
```
# Correlation Matrix (pearson-method)

Parameter1 | Parameter2 |         r |        95% CI |     t(38) |         p
---------------------------------------------------------------------------
longitud   |      ancho |      0.40 | [ 0.10, 0.63] |      2.71 | 0.040*   
longitud   |     grosor |  4.68e-03 | [-0.31, 0.32] |      0.03 | > .999   
longitud   |       peso |      0.96 | [ 0.92, 0.98] |     19.99 | < .001***
ancho      |     grosor | -1.29e-03 | [-0.31, 0.31] | -7.98e-03 | > .999   
ancho      |       peso |      0.51 | [ 0.23, 0.71] |      3.64 | 0.004**  
grosor     |       peso |     -0.06 | [-0.36, 0.26] |     -0.36 | > .999   

p-value adjustment method: Holm (1979)
Observations: 40

Las variables que se encuentran más asociadas son la longitud y el peso.

#Ejercicio 4. Calcula los coeficientes de correlación de las variables
junto con el nivel de significancia (p-value) en 1 solo gráfico.
Interpreta los resultados#

```{r}
install.packages("see")
plot(resultados)
```


#Ejercicio 5. Emplea una función para obtener en una matriz de
correlación lineal, IC 95% y pvalue de todas las variables en el data
frame 'data'\#

```{r}
cor.test(data$ancho, data$grosor)
cor.test(data$grosor, data$peso) 

```


#Ejercicio 6. Visualiza gráficamente la correlación lineal existente
entre las variables 'longitud' y 'peso'\#

```{r}
plot(data$longitud, data$peso, pch = 19, col = "blue")

# Línea de regresión
abline(lm(data$peso ~ data$longitud), col = "red", lwd = 3)

# Correlación de Pearson
text(paste("Correlación:", round(cor(data$peso, data$longitud), 2)), x = 25, y = 95)


```

#Ejercicio 7. Emplea la librería `corrplot()` para visualizar la
correlación entre variables#


```{r}
install.packages( "corrplot" )
library(corrplot)
corrplot(cor(data_2_ ))

```

#Ejercicio 8. A partir de la siguiente secuencia de valores numéricos:
#Distancia (km): 1.1,100.2,90.3,5.4,57.5,6.6,34.7,65.8,57.9,86.1

#Número de cuentas (valor absoluto): 110,2,6,98,40,94,31,5,8,10

#a. Crea 2 vectores: 'distancia' y 'n_piezas' para almacenarlos en un
data frame 
```{r}
distancia <- c(1.1,100.2,90.3,5.4,57.5,6.6,34.7,65.8,57.9,86.1)
n_piezas <- c(110,2,6,98,40,94,31,5,8,10)
```
#b. Calcula el coeficiente de correlación 
```{r}
correlacion <- cor(distancia, n_piezas)
print(correlacion)
prueba_correlacion <- cor.test(distancia, n_piezas)
difraccion = data.frame(distancia, n_piezas)
correlation::correlation(df1)
```

#c. Calcula el nivel de significancia#

Calcula el nivel de significancia para un valor de p=0.03 #El nivel de significancia es de 0.97


#d. Calcula el Intervalo de confianza al 95% en relación con el
coeficiente de correlación #e. ¿Qué intensidad y dirección presentan
ambas variables?#

```{r}
confint(cor(peso, ancho), level=0.95)
```

#e. ¿Qué intensidad y dirección presentan ambas variables?#

```{r}
intensidad_distancias <- mean(distancia)
intensidad_piezas <- mean(n_piezas)

direccion_distancias <- median(distancia)
direccion_piezas <- median(n_piezas)
```

#f. ¿Es significativa esta relación?#
La intensidad de la variable distancias es de 50.9 y la dirección es de 57.5; mientras que la intensidad de la variable número de piezas es de 34.2 y la dirección es de 10.

#g. Resulta apropiado afirmar la correlación (o no) entre variables con
un tamaño muestral tan reducido (n=10)\#

No resulta apropiado.


#Ejercicio 9. Explícame con un ejemplo en R la diferencia entre una
relación lineal y monótona entre 2 variables#

Una relación lineal entre dos variables significa que existe una relación entre las dos variables de tal forma que una sube o baja de manera proporcional a la otra. Un ejemplo en R sería el siguiente:


```{r}
x <- c(5,6,7,8,9,10)
y <- c(8,10,12,14,16,18)
plot(x,y)
```


Esto generaría un gráfico que muestra una relación lineal entre x e y, donde cada punto de x se corresponde con su valor doble en y.

Por otro lado, una relación monótona entre dos variables significa que existe una relación entre las dos variables de tal forma que una sube o baja de manera constante, sin embargo, no necesariamente es lineal. Un ejemplo en R sería el siguiente:


x <- c(3,4,5,6)



#Ejercicio 10. ¿Qué tipo de prueba de correlación se aplica a las

La prueba de correlación que se aplica a variables que experimentan una relación monótona es la correlación de Spearman. Esta prueba mide la correlación entre dos variables ordinales, es decir, variables que están en una escala ordinal donde los datos son comparados en términos de su posición relativa.

Un ejemplo de la prueba de correlación de Spearman en R puede ser el siguiente:

# Crear una muestra de 

x <- c(1, 5, 10, 15, 20)
y <- c(3, 7, 12, 17, 24)



# Calcular la correlación de Spearman
cor.test(x, y, method = "spearman")

El resultado de esta prueba es un valor de correlación de 0.98, lo que indica una fuerte correlación monótona entre las dos variables.
