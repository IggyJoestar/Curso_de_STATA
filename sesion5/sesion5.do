use"C:\Users\Computer\Documents\GitHub\Curso_de_STATA\sesion2\stats_players_premier_2017-2018.dta", clear

*le asignamos un número a cada jugador
g snum=_n
*vemos las dos variables
br nationality snum

*contraemos la variable nacionalidad
contract nationality
count
*Guardamos este valor contado de nacionalidades
global N=r(N)

set seed 1
sample 20
count 
global n=r(N)
*guardamos la selección
save seleccion, replace

*cargamos la base de datos otra vez
use"C:\Users\Computer\Documents\GitHub\Curso_de_STATA\sesion2\stats_players_premier_2017-2018.dta", clear
*hacemos el merge
merge m:1 nationality using seleccion
*quedate con los matcheados
keep if _merge==3

*generamos el factor de expansión
g factor=$N/$n
*psu: unidad primaria de muestreo
svyset [pw=factor], psu(nationality)
svy: mean age
*comparamos
estat effect