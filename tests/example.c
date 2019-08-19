#include<stdio.h>
#include<fcntl.h>

main()
{
	char *c="main()%1$c{%1$c%2$cchar *c=%3$c%s%3$c;%1$c%2$cprintf(c,10,9,34,c);%1$c}";
	printf(c,10,9,34,c);

	printf("Valeur option open : O_CREAT = %d || O_WRONLY = %d\n", O_CREAT, O_WRONLY);
}
