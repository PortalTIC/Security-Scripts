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
echo "Entre com um range de IP classe C:"
echo "Exemplo: 10.172.192"
read range 
ls
echo "Iniciando o scan no range de IP $range.X"
for ip in `seq 1 254`; do
host $range.$ip | grep "name pointer" | cut -d" " -f5 | grep -v "dyn"  
done
