#include<stdio.h>

/*
	Commentaire1
*/

void	function1()
{
	char *c="#include<stdio.h>%1$c%1$c/*%1$c%2$cCommentaire1%1$c*/%1$c%1$cvoid%2$cfunction1()%1$c{%1$c%2$cchar *c=%3$c%s%3$c;%1$c%2$cprintf(c,10,9,34,c);%1$c}%1$c%1$cint%2$cmain()%1$c{%1$c%2$c/*%1$c%2$c%2$cCommentaire2%1$c%2$c*/%1$c%2$cfunction1();%1$c%2$creturn(0);%1$c}%1$c";
	printf(c,10,9,34,c);
}

int	main()
{
	/*
		Commentaire2
	*/
	function1();
	return(0);
}
