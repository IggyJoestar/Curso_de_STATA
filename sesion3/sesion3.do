use"C:\Users\Computer\Documents\GitHub\Curso_de_STATA\sesion2\stats_players_premier_2017-2018.dta", clear
su age
return list
global ObsTot=r(N)
global n=35
di $n
*di "valor de k:" `tot'/n
scalar k=round($ObsTot/$n)
di k


di "el número seleccionado es:" round(1+(k-1)*uniform())
scalar select_number=round(1+(k-1)*uniform())

g snum=_n
br snum
drop if snum<select_number

g pos=_n-1
g filtro=mod(pos, 10)
keep if filtro==0
su age
g pr =r(N)/$ObsTot

g factor= 1/pr

svyset[pw= factor]
*creamos el intervalo de confianza
svy: mean age

*lo comparamos con el muestreo aleatorio simple
estat effect