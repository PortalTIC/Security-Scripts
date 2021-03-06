import requests
import sys
from termcolor import colored

def banner():
    print(colored('================================================', 'green', attrs=['dark']))
    print(colored("ClickJacking Hunter v0.2", 'yellow'))
    print(colored('By Alcyjones 2018', 'green', attrs=['bold']))
    print(colored("https://github.com/PortalTIC/", 'red'))
    print(colored('================================================', 'green', attrs=['dark']))

print ""
banner()
domain = raw_input("Qual a URL voce deseja testar? (Ex.: http://google.com/) \n")
headers = requests.get(domain).headers

if 'X-Frame-Options' in headers:
    print(colored(domain + " IS NOT VULNERABLE", 'green'))
else:
    print(colored(domain + " IS VULNERABLE", 'red'))
