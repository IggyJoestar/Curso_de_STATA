use"C:\Users\Computer\Documents\GitHub\Curso_de_STATA\sesion2\stats_players_premier_2017-2018.dta", clear

su age
*extraemos el valor de la media con scalar y también definimos nuestra muestra
scalar media_age=r(mean)
global n=35
global ObsTot=r(N)
*generamos la variable para estratificar
g estrato=1 if age<media_age
replace estrato=2 if age>=media_age

tab estrato
*guardamos el total de cada estrato
su age if estrato==1
scalar N1=r(N)
su age if estrato==2
scalar N2=r(N)
*vamos ahora hacer sample de cada uno de los estratos
*a cada uno de los samples lo vamos a guardar y vamos a cuidar la base de datos principal con una preserve y restore
preserve
keep if estrato==1
global n1=round($n*N1/$ObsTot)
sample $n1, count
save b1, replace
restore
*
preserve
keep if estrato==2
global n2=round($n*N1/$ObsTot)
sample $n2, count
save b2, replace
restore

use b1, clear
append using b2
tab estrato
*generamos el factor de expansión
g factor=N1/$n1 if estrato==1
replace factor=N2/$n2 if estrato==2
svyset [pw=factor], strata(estrato)
svy: mean age
estat effect