# Tipos de muestreo

## Probabilistico
- **Muestreo Aleatorio Simple**: Es como la extracción de una pelota en una caja.
- **Muestreo Sistemático**: Se ponen todos los elementos en una línea y se sustrae uno para luego contar "k" elementos para extraer el siguiente hasta conseguir el total.
- **Muestreo Aleatorio Estratificado**: Se divide en estratos (conjunto de elementos con similares carácterísticas) para estraer cierta muestra de cada estrato
- **Muestreo con Conglomerados**: Se divide la población en función a la geografía para extraer ciertos datos de cada lugar (conglomerado).

- **Muestreo Polietápico**: Se pueden usar mas de 2 tipos de muestreo aleatorio en uno solo, por ejemplo el de conglomerados y estratificado.

## No probabilistico

- **Muestreo  Indiscriminado**: Se encuesta a la persona que está al paso.

- **Muestreo  de Voluntario**: Se encuesta a los voluntarios de un estudio.
- **Muestreo  al Juicio**: Se muestrea teniendo en cuenta un criterio para focalizar el estudio.
- **Muestreo  por Cuotas**: Se saca cuotas de personas como las minorías u otras personas.
- **Muestreo  por Bola de Nieve**: Se va extrayendo la muestra poco por poco.

## 1) Muestreo Aleatorio Simple:


```STATA
*cargamos la base de datos (ojo cargar a su dirección del archivo)
use"C:\Users\Computer\Documents\GitHub\Curso_de_STATA\sesion2\stats_players_premier_2017-2018.dta", clear

*hacemos summarize a una variable que nos interese
su age

*con return podemos obtener los escalares
return list

*asignamos la semillas
set seed 1

sample 35, count
```

### Creando el intervalo de confianza

```STATA
g pr =r(N)/ObsTot

g factor= 1/pr


svyset[pw= factor]

*creamos el intervalo de confianza

svy: mean age
```