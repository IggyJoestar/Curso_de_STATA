## Muestreo sistemático
Para el muestreo sistemático, luego de definir muestra "n" tenemos que hallar el valor de "k".
Para hallar el "k" nos ayudaremos de los escalares hallados en el summarize de la variable.
```STATA
*volvemos a cargar la base de datos. (OJO: cargar en su dirección del archivo)
use"C:\Users\Computer\Documents\GitHub\Curso_de_STATA\sesion2\stats_players_premier_2017-2018.dta", clear
su age
return list
scalars:
              r(N) =  35
          r(sum_w) =  35
           r(mean) =  30.2
            r(Var) =  15.81176470588235
             r(sd) =  3.976400973981667
            r(min) =  22
            r(max) =  38
            r(sum) =  1057

```
el valor de "k" es la división de *ObsTot* sobre "n". Cabe destacar que si el valor es un decimal este se redondea hacia abajo.
```STATA
di 'valor de k:' ObsTot/n
scalar k=ObsTot/n
```
Una vez que tenemos el valor de "k" tenemos que decir que el primer individuo debe ser seleccionado entre los primeros k individuos aleatoriamente

```STATA
di 'el número seleccionado es:' round(1+(k-1)*uniform())
```
luego dropeamos los datos que anteriores al número seleccionado

```STATA
di 'el número seleccionado es:' round(1+(k-1)*uniform())
```
ahora generamos al variable posición que cuente desde cero y luego que cree un filtro ayudandonos de ”mod()”, una función de estata para hallar el resto. Para culminar con un filtro donde se nos muestre todos los valores que contienen esa diferencia de k elementos.

```STATA
g pos=n_1
filtro=mod(pos, 10)
keep if filtro==0
```
Para finalizar ejecutamos nuestro factor de expansión como en el anterior caso.

```STATA
g pr =r(N)/ObsTot

g factor= 1/pr

svyset[pw= factor]
*creamos el intervalo de confianza
svy: mean age
```
Adicionalmente si queremos ver la ventaja de este muestreo frente al aleatorio simple. Ejecutamos el siguiente código, que compara las desviaciones estandar.
```STATA
estat effect
```