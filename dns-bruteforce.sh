#!/bin/bash
#    Copyright Alcyon Junior a.k.a. PhYsHyOn
#    http://www.portaltic.com
#    This code is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#    This code is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>
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
