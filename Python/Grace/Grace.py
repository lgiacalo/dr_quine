#!/usr/bin/python
import sys
"""
	Colleen python program
"""

str="#!/usr/bin/python{0}import sys{0}{2}{2}{2}{0}{1}Colleen python program{0}{2}{2}{2}{0}{0}str={2}{3}{2}{0}{0}fd=open('Grace_kid.py','w',0o664){0}sys.stdout=fd{0}print(str.format(chr(10),chr(9),chr(34),str)){0}sys.stdout.close(){0}fd.close()"

fd=open('Grace_kid.py','w',0o664)
sys.stdout=fd
print(str.format(chr(10),chr(9),chr(34),str))
sys.stdout.close()
fd.close()
