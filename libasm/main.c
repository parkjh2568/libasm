#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int ft_strcmp(char *a, char *b);
int main()
{
	printf("%d",ft_strcmp("\xff\xff","\xff"));
}
