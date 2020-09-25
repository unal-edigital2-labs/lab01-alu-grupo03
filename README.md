# lab01 : Unidad de suma, resta, multiplicación y visualización BCD
## Introducción

El siguiente laboratorio se realiza con el fin de tener un primer acercamiento a la construción de proyectos en las FPGA's, en este especificamente se busca implementar una ALU(unidad logica aritmetica) con funciones basicas como la suma, resta y multiplicacion de numeros naturales, y la visualización del resultado en dos Dysplays 7-segmentos. 

##  Descripción de modulos
En este apartado se describiran los cambios principales hechos en el proyecto dado y tambien el diseño de nuevos modulos como el restador.

##  Multiplicador.
Vemos que el modulo del multiplicador suministrado al principio del laboratorio prensentaba algunas fallas debido a que cuando se terminaba el proceso volvia a repetirse el proceso nuevamente, esto se debia principalmente en el diseño de la maquina de estados ya que cuando se terminaba el proceso y se llegaba al estado final habia una sentencia que hacia que se regresara al primer estado poniendo el registro de multiplicaciones parciales en cero.

![codigo restador](https://user-images.githubusercontent.com/41557513/94214394-18599280-fe9f-11ea-93b4-1eed6cbbf83b.PNG) 

Para solucionar este problema como se evidencia en la imagen, lo que se hizo fue borrar la linea de codigo que estaba al final de el proceso de maquinas de estados, crear un nuevo always que tomara como entradas A y B (numeros que se iban a multiplicar)  para que cada vez que se cambiaran estos dos valores el estado actual fuera el estado inicial.

##  Restador
Este modulo fue creado desde cero y se usó como codigo base el modulo de suma ya que ambas operaciones son bastante similares y siguen un proceso similar. Sin embargo, surgian problemas cuando el resultado de la resta era negativo por como esta definida la resta en el programa, por lo que fueron nesesarias un par de lineas de codigo adicionales, que tienen funcion de restar normalmente cuando el minuendo sea mayor o igual a cero y en caso contrario restar el sustraendo al minuendo, conservando asi el valor absoluto de la diferencia, por otra parte tambien con estas mismas operaciones se logra identificar si el resultado es positivo o negativo con un quinto bit.
![codigo restdor](https://user-images.githubusercontent.com/41557513/94214381-11cb1b00-fe9f-11ea-954b-e9366bf37a3b.PNG)

Se adjunta la simulación de la resta de 1-2=-1, en la cual se logra visualizar como resultado en el display de 7 segmentos de anodo común el número 1 y tambien que el bit de signo esta en alto, lo cual indica que este es un número negativo.

![Captura](https://user-images.githubusercontent.com/41557513/94214418-214a6400-fe9f-11ea-8da0-0f5cb92058df.PNG)

## Implementacion
En esta sección adjuntamos las evidencias de funcionamiento de la ALU en la FPGA

ALU en modo sumador Entrada A=2, B=1 Resultado=3

![WhatsApp Image 2020-09-24 at 10 17 17 PM (1)](https://user-images.githubusercontent.com/42346359/94222806-fe767a80-feb3-11ea-8025-0fbed686782d.jpeg)




ALU en modo restador Entrada A=6, B=5 Resultado=1

![WhatsApp Image 2020-09-24 at 10 17 17 PM (2)](https://user-images.githubusercontent.com/42346359/94222802-fcacb700-feb3-11ea-8002-a76f840bac8e.jpeg)




ALU en modo restador Entrada A=0, B=5 Resultado=-5 (punto apagado)

![WhatsApp Image 2020-09-24 at 10 17 17 PM](https://user-images.githubusercontent.com/42346359/94222808-ffa7a780-feb3-11ea-802c-b805b1d023b8.jpeg)



