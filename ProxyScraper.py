import requests
from bs4 import BeautifulSoup
import sys
from termcolor import colored

def banner():
    print(colored('================================================', 'green', attrs=['dark']))
    print(colored("Proxy Scraper v0.1", 'yellow'))
    print(colored('By Alcyjones 2018', 'green', attrs=['bold']))
    print(colored("https://github.com/PortalTIC/", 'red'))
print(colored('================================================', 'green', attrs=['dark']))

proxyDomain = "https://free-proxy-list.net/"

r = requests.get(proxyDomain)

soup = BeautifulSoup(r.content,'html.parser')

table = soup.find('table',{"id" : "proxylisttable"})

for  row in table.find_all('tr'):
    columns = row.find_all('td')
    try:
        print "%s:%s\t%-20s\t%-20s"  % (columns[0].get_text(),columns[1].get_text(),columns[3].get_text(),columns[4].get_text())
    except:
        pass
