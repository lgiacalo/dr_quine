#!/usr/bin/python
import sys
import os
#
#	Sully python program
#

i=5
str="#!/usr/bin/python{0}import sys{0}import os{0}#{0}#{1}Sully python program{0}#{0}{0}i={4}{0}str={2}{3}{2}{0}{0}try:{0}{1}fd=open('Sully_{4}.py','w'){0}{1}sys.stdout=fd{0}{1}print(str.format(chr(10),chr(9),chr(34),str,i-1)){0}{1}os.chmod('Sully_{4}.py', 0o764){0}{1}sys.stdout.close(){0}{1}fd.close(){0}{1}if i>0:{0}{1}{1}os.system('./Sully_{4}.py'){0}except:{0}{1}print({2}Error{2})"

try:
	fd=open('Sully_5.py','w')
	sys.stdout=fd
	print(str.format(chr(10),chr(9),chr(34),str,i-1))
	os.chmod('Sully_5.py', 0o764)
	sys.stdout.close()
	fd.close()
	if i>0:
		os.system('./Sully_5.py')
except:
	print("Error")
