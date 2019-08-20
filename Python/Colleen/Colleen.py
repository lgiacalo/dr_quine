#!/usr/bin/python

"""
	Colleen python program
"""

def function1 ():
	str = "#!/usr/bin/python{0}{0}{2}{2}{2}{0}{1}Colleen python program{0}{2}{2}{2}{0}{0}def function1 ():{0}{1}str = {2}{3}{2}{0}{1}print(str.format(chr(10), chr(9), '{2}', str)){0}{0}def main ():{0}{1}{2}{2}{2}{0}{1}{1}Commentaire inutile{0}{1}{2}{2}{2}{0}{1}function1(){0}{0}if  __name__  ==  {2}__main__{2} :{0}{1}main ()"
	print(str.format(chr(10), chr(9), '"', str))

def main ():
	"""
		Commentaire inutile
	"""
	function1()

if  __name__  ==  "__main__" :
	main ()
