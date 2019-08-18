//Commentaire1

void	function1()
{
	char *c="//Commentaire1%1$c%1$cvoid%2$cfunction1()%1$c{%1$c%2$cchar *c=%3$c%s%3$c;%1$c%2$cprintf(c,10,9,34,c);%1$c}%1$c%1$cmain()%1$c{%1$c%2$c//Commentaire2%1$c%2$cfunction1();%1$c}%1$c";
	printf(c,10,9,34,c);
}

main()
{
	//Commentaire2
	function1();
}
