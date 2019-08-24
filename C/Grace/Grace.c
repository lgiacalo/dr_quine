#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>

/*
	Commentaire1
*/

#define	str	"Grace_kid.c"

#define	FT()	int main(){char *c="#include<stdio.h>%1$c#include<fcntl.h>%1$c#include<unistd.h>%1$c%1$c/*%1$c%2$cCommentaire1%1$c*/%1$c%1$c#define%2$cstr%2$c%3$cGrace_kid.c%3$c%1$c%1$c#define%2$cFT()%2$cint main(){char *c=%3$c%s%3$c;int%2$cfd = open(str, O_WRONLY | O_CREAT, 0644);dprintf(fd,c,10,9,34,c);close(fd);}%1$c%1$c#define%2$cthree%2$c3%1$c%1$cFT()%1$c";int	fd = open(str, O_WRONLY | O_CREAT, 0644);dprintf(fd,c,10,9,34,c);close(fd);}

#define	three	3

FT()
