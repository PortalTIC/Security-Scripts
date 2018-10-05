import socket
from termcolor import colored

def banner():
    print(colored('================================================', 'green', attrs=['dark']))
    print(colored("Fast Port Scanner v0.1", 'yellow'))
    print(colored('By Alcyjones 2018', 'green', attrs=['bold']))
    print(colored("https://github.com/PortalTIC/", 'red'))
    print(colored('================================================', 'green', attrs=['dark']))

print ""
banner()
ip = raw_input("Qual o IP voce deseja realizar o SCAN? (Ex.: 192.168.1.1) \n")
for port in range(1,65535):
    try:
        s = socket.socket()
        s.connect((ip,port))
        s.close()
        print "%d/tcp" %(port)
    except:
        pass
