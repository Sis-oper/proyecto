#!/bin/bash
#llave
llave=WJL9D754E79AUZBT

#Calculo del Disco duro disponible

Discoutilizado=$(df | grep /dev/root | awk '{print $3'})
TamanoDisco=$(df | grep /dev/root | awk '{print $2'})
DiscoDisponible=$(df | grep /dev/sda1 | awk '{print $4'})
let PorcenDiscousado=(Discoutilizado*100)/${TamanoDisco}
let PorcenDiscoDisp=100-$PorcenDiscousado
echo "Disco Disponible:" $PorcenDiscoDisp%
# quite los $

#Calculo de memoria utilizada
MemoriaTotal=$(free | grep Mem | awk '{print $2'})
#echo $MemoriaTotal
Memoriausada=$(free | grep Mem | awk '{print $3'})
#echo $Memoriausada
let PorcenMemused=(${Memoriausada}*100)/${MemoriaTotal}
echo "Memoria Utilizada:" $PorcenMemused%

#CPU Utilizada
CPU_avg=$(mpstat | grep all | awk '{print $12'})
echo "ConsumoCPU:" $CPU_avg%

#Speed Test 
SpeedTest=$(speedtest-cli)
python speedtest-cli.py > nuevasal.txt 
Download=$(cat nuevasal.txt | grep Download | awk '{print $2}')
Upload=$(cat nuevasal.txt | grep Upload | awk '{print $2}')
Pingsito=$(cat nuevasal.txt | grep ms | awk '{print $9}')
echo "Pingsito:" $Pingsito
echo "Download Speed:" $Download
echo "Upload Speed:" $Upload


#Serv web
wget -q -O- "http://api.thingspeak.com/update?key=$llave&field1=$PorcenDiscoDisp&field2=$PorcenMemused&field3=$CPU_avg&field4=$Pingsito&field5=$Download&field6=$Upload"
#permite repetir el script
watch -n 150 ./script_examen.sh