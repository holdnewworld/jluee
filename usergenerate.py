import random
import string
import subprocess 

PassList = []
UserList = []
def GenPasswd():
	user = random.choice(range(100, 1000))
	port = random.choice(range(50000, 60000))
	passwd = ''.join([random.choice(string.ascii_letters) for i in range(12)])
	if (port in PassList or user in UserList):
		GenPasswd()
	else:
		PassList.append(port)
		return user, port, passwd


def main():
	Message = []
	user ,port, passwd = GenPasswd()
	print user, port, passwd
	cmd = 'python mujson_mgr.py -a -u ' + str(user) + ' -p ' + str(port) + ' -k ' + str(passwd) + ' -m rc4-md5 -O origin -o http_simple -t 50 -S 2500'
	print cmd
	p = subprocess.Popen(cmd, stdout=subprocess.PIPE,shell=True)
	
	for i in p.stdout.readlines():
		print i
		Message.append(i)
	with open('a.txt','a+') as f:
		f.write(str(user))
		f.write('\t')
		f.write(str(port))
		f.write('\t')
		f.write(passwd)
		f.write('\t')
		f.write(str(Message[-1]))
		f.write('\n')


	iptables = 'iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport ' + str(port) + ' -j ACCEPT'	
	p = subprocess.Popen(iptables, stdout=subprocess.PIPE,shell=True)
	iptables = 'iptables -I INPUT -m state --state NEW -m udp -p udp --dport ' + str(port) + ' -j ACCEPT'
	p = subprocess.Popen(iptables, stdout=subprocess.PIPE,shell=True)


for i in range(1,20):
	main()
