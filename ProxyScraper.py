import requests
from bs4 import BeautifulSoup

proxyDomain = "https://free-proxy-list.net/"

r = requests.get(proxy.Domain)

soup = BeautifulSoup(r.content.'html.parser')

table = soup.find('table',{"id" : "proxylisttable"})

for row in table.find_all('tr'):
  collumns = row.find_all('td')
  try:
    print "%ss % (columns[0].get_text(),columns[1].get_text())
   except:
    pass
