#!/bin/bash

read -p "Bem vindo ao IPSWEEP, esse script irá varrer a sua rede, digite o endereço IP da sua rede. Exemplo: 192.168.0: " ip

if [ "1" == "" ]
then
        echo "Você não digitou o IP da rede!"
else
for x in {1..254}
do
        ping -c 1 $ip.$x | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
