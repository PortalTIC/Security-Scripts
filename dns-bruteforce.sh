#!/bin/bash
echo "Digite o domínio desejado"
read dominio
echo "O brute force com o dns.txt sera realizado no dominio: $dominio"
echo "Encontramos os seguintes endereços:"
for name in $(cat dns.txt); do
host $name.$dominio | grep "has address";
done
