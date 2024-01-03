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


### Determinando el tamaño de muestra, el poder y el sesgo

Para cualquier tipo de estudio siempre es esencial determinar el número de personas o datos que nos servirán de muestra "n".
Gracias a la teoría de intervalos de confianza se nos es factible determinar el número de personas que necesitaremos dados un cierto nivel de confianza y margen de eror que quisieramos tener en el estudio.
Cabe destacar las formulas para hallar un óptimo tamaño de muestra varían en función a nuestro objeto o variable de estudio, dependen si queremos estimar una **media** o una **proporción.**
A continuación se presentan las fórmulas para cada caso:

#### Para una Proporción (Con población total muy grande)

$$\frac{Z_{a}^{2}pq}{d^2}$$

Donde:
p: proporción objetivo
q: complemento de la proporción objetivo (1-p
$z_{a}$: El valor de "a" en la tabla Z.

#### Para una Proporción (Con población total pequeña o conocida)

$$\frac{NZ_{a}^{2}pq}{d^2(N-1)+Z_{a}^{2}pq}$$

#### Para dos proporciones

$$n= \frac{[Z_{\alpha}\sqrt{2p(1-p)}+Z_{\beta}\sqrt{p_{1}(1-p_{1})+p_{2}(1-p_{2}})]^{2}}{(pi-p2)^{2}}$$


#### Para una media: (Con población total muy grande)

$$\frac{Z_{a}^{2}\sigma^2}{d^2}$$

#### Para una media: (Con población total muy pequeña o conocida)

$$\frac{NZ_{a}^{2}\sigma^2}{d^2(N-1)+Z_{a}^{2}\sigma^2}$$

## Conociendo el comando Power
Sintaxis:

| Comando | Metodo | Argumentos |
| ------------- | ------------- |---------|
| power  | onemean  | u1 u0 ,sd() |

### Para la media:
| Métodos | Argumentos | 
| ------------- | ------------- |
| onemean  | u1 u0 ,sd() |
| twomeans  | u1 u0 , sd1() sd2() |

### Para la proporción:
| Métodos | Argumentos | 
| ------------- | ------------- |
| oneproportion  | p1 p2  |

### Ejercicios

1. El Ministerio del Trabajo y Promoción del Empleo (MTPE), le encarga realizar un estudio para conocer el salario medio de los egresados de la carrera de economía en Lima Metropolitana. Por un informe reciente de la SUNEDU sabes que el total de economistas egresados laborando en Lima Metropolitana es 3 300 y que la desviación de sus sueldos es 400 soles. ¿De que tamaño escogerías tu muestra si se quiere que el nivel de confianza sea 95% ,con un error no mayor a los 50 soles?

2.  Apoyo Consultorías en una investigación reciente sostiene que el salario promedio de un egresado de la carrera de economía en Lima Metropolitana es 2800. Sin embargo, usted cree por su experencia que el valor es mucho mayor, usted cree que está por los 3000. ¿Que prueba de hipotesis usará? ¿Que cantidad de muestra necesitará para un nivel de confianza de 95%?

3. El generente muy interesado en su hipotesis, piensa apoyar su proyecto para cuestionar encontrados por Apoyo Consultorías, por ello le pide a usted que le muestre la potencia(power) de la prueba estadística con 40, 60, 80, 100 y 120 datos. ¿Cómo le mostrarías los valores del power para cada tamaño de muestra? Si su jefe está dispuesto a financiar un estudio con una muestra de 130 voluntarios, ¿Ese estudio tendrá un nivel de significancia menor al 1%?
