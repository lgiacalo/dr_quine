#include<stdlib.h>
#include<fcntl.h>
#include<stdio.h>

#define str "Sully_5.c"
#define cmp "gcc -Wall -Wextra -Werror -o Sully_5 Sully_5.c"
#define exec "./Sully_5"

int	main()
{
	char *c="#include<stdlib.h>%1$c#include<fcntl.h>%1$c#include<stdio.h>%1$c%1$c#define str %3$cSully_%5$d.c%3$c%1$c#define cmp %3$cgcc -Wall -Wextra -Werror -o Sully_%5$d Sully_%5$d.c%3$c%1$c#define exec %3$c./Sully_%5$d%3$c%1$c%1$cint%2$cmain()%1$c{%1$c%2$cchar *c=%3$c%4$s%3$c;%1$c%2$cint fd, i = %5$d;%1$c%1$c%2$cfd = open(str, O_WRONLY | O_CREAT, 0644);%1$c%2$cdprintf(fd,c,10,9,34,c,i-1);%1$c%2$csystem(cmp);%1$c%2$cif(i<=0)%1$c%2$c%2$creturn(0);%1$c%1$c%2$csystem(exec);%1$c%2$creturn(0);%1$c}%1$c";
	int fd, i = 5;

	fd = open(str, O_WRONLY | O_CREAT, 0644);
	dprintf(fd,c,10,9,34,c,i-1);
	system(cmp);
	if(i<=0)
		return(0);

	system(exec);
	return(0);
}
