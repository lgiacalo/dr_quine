main()
{
	char *c="main()%1$c{%1$c%2$cchar *c=%3$c%s%3$c;%1$c%2$cprintf(c,10,9,34,c);%1$c}";
	printf(c,10,9,34,c);
}
