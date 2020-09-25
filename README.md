# lab01 : Unidad de suma, resta, multiplicación y visualización BCD
## Introducción

El siguiente laboratorio se realiza con el fin de tener un primer acercamiento a la construción de proyectos en las FPGA's, en este se busca
implementar una ALU(unidad logica aritmetica) con funciones basicas como la suma, resta y multiplicacion de numeros naturales, y la visualización del resultado en dos Dysplays 7-segmentos. 

##  Descripcion de modulos
En este apartado se describiran los cambios principales hechos en el proyecto dado y tambien el diseño de nuevos modulos como el restador.


##Multiplicador.
Vemos que el modulo del multiplicador suministrado al principio del laboratorio prensentaba algunas fallas en este modulo debido que cuando se terminaba el proceso volvia a repetirse 
el proceso nuevamente, esto se debia principalmente en el diseño de la maquina de estados ya que cuando se terminaba el proceso y se llegaba al estado final habia una sentencia que hacia 
que se regresara al primer estado poniendo el registro de multiplicaciones parciales en cero.

![codigo restador](https://user-images.githubusercontent.com/41557513/94214394-18599280-fe9f-11ea-93b4-1eed6cbbf83b.PNG) 

Para solucionar este problema como se evidencia en la imagen, lo que se hizo fue borrar la linea de codigo que estaba al final de el proceso de maquinas de estados, crear un nuevo always que tomara como entradas A y B (numeros que se 
iban a multiplicar)  para que cada vez que se cambiaran estos dos valores el estado actual fuera el estado inicial.




##Restador
![codigo restdor](https://user-images.githubusercontent.com/41557513/94214381-11cb1b00-fe9f-11ea-954b-e9366bf37a3b.PNG)



## Simulacion
![multiplicacion](https://user-images.githubusercontent.com/41557513/94214352-fb24c400-fe9e-11ea-80a9-8aff00f540b8.PNG
![Captura](https://user-images.githubusercontent.com/41557513/94214418-214a6400-fe9f-11ea-8da0-0f5cb92058df.PNG)
##Implementacion




