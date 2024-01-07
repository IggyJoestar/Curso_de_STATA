# Muestreo Aleatorio por Conglomerado
En este caso vamos a volver a asignarle un número a cada jugador(una especie de ID). Adicionalmente vamos trabajar en función a los conglomerados que serán la nacionalidad de cada jugador "nationality"
```STATA
*le asignamos un número a cada jugador
g snum=_n
*vemos las dos variables
br nationality snum
```
Podemos contraer la variable nacionalidad y adicionalmente podemos usar el comando "count" para contar. De esta forma contaremos cuantas nacionalidades hay en total.
```STATA
*contraemos la variable nacionalidad
contract nationality
count
*Guardamos este valor contado de nacionalidades
global N=r(N)
```
De esto extraemos una selección aleatoria de por ejemplo 20%. Contamos los dados conseguidos y los guardamos está selección como un escalar.
```STATA
set seed 1
sample 20
count * para contar
global n=r(N)
*guardamos la selección
save seleccion, replace
```
Volvemos a cargar la base de datos inicial le hacemos un merge con nuestra selección y nos quedamos con los datos que hacen match.
```STATA
*cargamos la base de datos otra vez
use"C:\Users\Computer\Documents\GitHub\Curso_de_STATA\sesion2\stats_players_premier_2017-2018.dta", clear
merge m:1 dnum using seleccion
*quedate con los matcheados
keep if _merge==3
```
Generamos el factor de expansión partiendo de psu: unidad primaria de muestreo.
```STATA
*generamos el factor de expansión
g factor=$N/$n
*psu: unidad primaria de muestreo
svyset [pw=factor], psu(nationality)
svy: mean age
*comparamos
estat effect
```

