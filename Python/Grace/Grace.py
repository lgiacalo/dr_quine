#!/usr/bin/python
import sys
#
#	Grace python program
#

str="#!/usr/bin/python{0}import sys{0}#{0}#{1}Grace python program{0}#{0}{0}str={2}{3}{2}{0}{0}try:{0}{1}fd=open('Grace_kid.py','w'){0}{1}sys.stdout=fd{0}{1}print(str.format(chr(10),chr(9),chr(34),str)){0}{1}sys.stdout.close(){0}{1}fd.close(){0}except:{0}{1}print({2}Error{2})"

try:
	fd=open('Grace_kid.py','w')
	sys.stdout=fd
	print(str.format(chr(10),chr(9),chr(34),str))
	sys.stdout.close()
	fd.close()
except:
	print("Error")
