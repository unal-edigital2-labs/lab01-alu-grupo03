# lab01 : Unidad de suma, resta, multiplicación, división y visualización BCD
## Introducción

En el siguiente laboratorio con el fin de abordar los primeros pasos para la construcion de un procesador, se tiene como objetio 
implementar una alu(unidad logica aritmetica)´para que se impliementen las funciones basicas como lo es la suma, resta, multiplicacion de numeros 
ingresados en la FPGA y mostrarlos en dos Dysplays 7-segmentos. 

##  Describcion de modulos
en este apartado se va a describir los cambios principales asi como en diseño de nuevos modulos dieñados
que antes nos e habian dado como el restador.


##Multiplicador.
Vemos que el modulo del multiplicador suministrado al principio del laboratorio prensentaba algunas fallas en este modulo debido que cuando se terminaba el proceso volvia a repetirse 
el proceso nuevamente, esto se debia principalmente en el diseño de la maquina de estados ya que cuando se terminaba el proceso y se llegaba al estado final habia una sentencia que hacia 
que se regresara al primer estado poniendo el registro de multiplicaciones parciales en cero.

Para solucionar este problema lo que se hizo fue borrar la linea de codigo que estaba al final de el proceso de maquinas de estados, crear un nuevo always que tomara como entradas A y B (numeros que se 
iban a multiplicar)  para que cada vez que se cambiaran estos dos valores el estado actual fuera el estado inicial.

![multiplicacion](https://user-images.githubusercontent.com/41557513/94214352-fb24c400-fe9e-11ea-80a9-8aff00f540b8.PNG)

![codigo restdor](https://user-images.githubusercontent.com/41557513/94214381-11cb1b00-fe9f-11ea-954b-e9366bf37a3b.PNG)
![codigo restador](https://user-images.githubusercontent.com/41557513/94214394-18599280-fe9f-11ea-93b4-1eed6cbbf83b.PNG)
![Captura](https://user-images.githubusercontent.com/41557513/94214418-214a6400-fe9f-11ea-8da0-0f5cb92058df.PNG)

## Simulacion

##Implementacion





probando..


