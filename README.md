# lab01 : Unidad de suma, resta, multiplicación, división y visualización BCD
## Introducción

En el siguiente laboratorio con el fin de abordar los primeros pasos para la construcion de un procesador, se tiene como objetio 
implementar una alu(unidad logica aritmetica)´para que se impliementen las funciones basicas como lo es la suma, resta, multiplicacion de numeros 
ingresados en la FPGA y mostrarlos en dos Dysplays 7-segmentos. 

##  Describcion de modulos
en este apartado se va a describir los cambios principales asi como en diseño de nuevos modulos dieñados
que antes nos e habian dado como el restador.


Multiplicador.
Vemos que el modulo del multiplicador suministrado al principio del laboratorio prensentaba algunas fallas en este modulo debido que cuando se terminaba el proceso volvia a repetirse 
el proceso nuevamente, esto se debia principalmente en el diseño de la maquina de estados ya que cuando se terminaba el proceso y se llegaba al estado final habia una sentencia que hacia 
que se regresara al primer estado poniendo el registro de multiplicaciones parciales en cero.

Para solucionar este problema lo que se hizo fue borrar la linea de codigo que estaba al final de el proceso de maquinas de estados, crear un nuevo always que tomara como entradas A y B (numeros que se 
iban a multiplicar)  para que cada vez que se cambiaran estos dos valores el estado actual fuera el estado inicial.

## Simulacion

##Implementacion





probando..


