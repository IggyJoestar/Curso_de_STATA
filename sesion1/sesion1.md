# Sesion 1_ Planificación para el Estudio
### Aprenderás:
- El estudio Estadístico
- Determinando el tamaño de muestra, el poder y el sesgo
- El comando Power
- Ejercicios


### El estudio Estadístico
En un estudio estadístico se usa la estadística para aproximarnos a la realidad y entenderla mejor. Para un estudio estadístico se pueden usar diferentes métodos como la estadística descriptiva, el **análisis de regresiones** o los **contrastes de hipótesis**, entre otros.
Para llevar a cabo un estudio estadístico es esencial conocer a quién va dirigido, qué **estamos buscando** y cuál será el **procedimiento a seguir**.

Para iniciar con la recolección de datos del estudio, es necesario hacer una planificación previa. Esta misma planificación tiene una serie de pasos, como los siguientes:

```flow
st=>start: Escogemos la variable a analizar
         ----¿Qué estamos buscando?-----
op=>operation: Definimos el tipo de muestreo
op2=>operation: Determinamos el tamaño de muestra
---¿Cuántos datos necesitamos?----
e=>end: Terminamos con la fase previa

st->op->op2->e

```
### Determinando el tamaño de muestra, el poder y el sesgo

Para cualquier tipo de estudio siempre es esencial determinar el número de personas o datos que nos servirán de muestra "n".
Gracias a la teoría de intervalos de confianza se nos es factible determinar el número de personas que necesitaremos dados un cierto nivel de confianza y margen de eror que quisieramos tener en el estudio.
Cabe destacar las formulas para hallar un óptimo tamaño de muestra varían en función a nuestro objeto o variable de estudio, dependen si queremos estimar una **media** o una **proporción.**
A continuación se presentan las fórmulas para cada caso:

#### Para una Proporción (Con población total muy grande)

$$\frac{Z_{a}^{2}pq}{d^2}$$

#### Para una Proporción (Con población total pequeña o conocida)

$$\frac{NZ_{a}^{2}pq}{d^2(N-1)+Z_{a}^{2}pq}$$

#### Para dos proporciones

$$n= \frac{[Z_{\alpha}\sqrt{2p(1-p)}+Z_{\beta}\sqrt{p_{1}(1-p_{1})+p_{2}(1-p_{2}})]^{2}}{(pi-p2)^{2}}$$


#### Para una media: (Con población total muy grande)

$$\frac{Z_{a}^{2}\sigma^2}{d^2}$$

#### Para una media: (Con población total muy pequeña o conocida)

$$\frac{NZ_{a}^{2}\sigma^2}{d^2(N-1)+Z_{a}^{2}\sigma^2}$$

### 


### Ejercicios
