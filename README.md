# proyecto
Proyecto sistemas operativos


El Mini-Proyecto inició con la asignación de la Raspberry Pi como sistema de cómputo para la realización del mismo, con este lo que primero se hizo fue la interacción visual, con el fin de identificar los distintos puertos y componentes del equipo y de esta manera saber con que se contaba y cómo hacer uso de estos para facilitar o simplemente realizar el Proyecto como tal. En este proceso se identificó que la Raspberry disponía de un puerto para SD Card , el cual iba a funcionar como disco duro del equipo; basados en esto el grupo de trabajo a través de un computador realizó la adecuación de una SD, para que sirviera a la hora de instalarle el Sistema Operativo, al hacer esto, se acudió a la descarga y posterior instalación del sistema operativo Raspbian,el cual era el indicado para desarrollar lo que se requería en el Mini-Proyecto, para esto se utilizó el software Daemon Tools para crear el Booteable  y comandos en la terminal para asignar el booteable a la unidad de disco(Memoria SD).


Para analizar el flujo de datos en el sistema se elaboró un script en bash. En pro de mesurar el uso del disco ,la memoria , el procesamiento de datos en el sistema y las velocidades del tráfico de red. El script debía analizar lo dicho  anteriormente usando funciones nativas de bash e implementando algunas conjunciones de operaciones (usando los PIPES). Por ejemplo algunos de los  comandos más usados fueron “mpstat”, “df” y “free”.Los cuales ,respectivamente, permitieron analizar el uso del procesador ,  muestrear el uso actual del disco duro y tomar información acerca del uso de la RAM.  El script utiliza estos comandos para poder extraer algunos datos relevantes para el análisis.


Como se muestra en la imágen esas son las líneas respectivas al cálculo del disco utilizado ,de la  memoria utilizada y del procesamiento actual de la RaspBerry Pi.


Para analizar las velocidades de tráfico de datos de red se usó el speedtest-cli. Dicha “herramienta” nos permite ver nuestro ping, la velocidad y descarga dado un host ubicado en un área cercana. Dicho host estaba en bogotá. Con el speedtest pudimos analizar éste tráfico y usando algunas funciones de bash filtramos la información que necesitábamos y la ubicamos en un archivo de texto. En pro de leerlo de forma más sencilla. Se adjuntará el código respectivo para ser aún más explícitos de cómo funciona el script en general.

