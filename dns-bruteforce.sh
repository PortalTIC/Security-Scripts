#!/bin/bash
file=dns.txt
if [ -e "$file" ] ; then
echo "O arquivo dns.txt esta configurado"
else
echo "O arquivo dns.txt não existe, crie e edite ele antes de iniciar o teste."
exit
fi
echo "Digite o domínio desejado"
read dominio
clear
echo "O brute force com o dns.txt sera realizado no dominio: $dominio"
echo "Encontramos os seguintes endereços:"
for name in $(cat dns.txt); do
host $name.$dominio | grep "has address";
done
