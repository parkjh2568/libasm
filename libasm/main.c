#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>

int ft_strcmp(const char *a, const char *b);
size_t ft_strlen(const char *a);
char *ft_strcpy(char *a, const char *b);
size_t	ft_write(int fildes, const void *buf, size_t nbyte);
size_t	ft_read(int fildes, const void *buf, size_t nbyte);
char *ft_strdup(const char *s1);

int main()
{
	char *a;
	char *b = "copy done";
	char c[100];
	char *d = "strdup done";
	char f[100];
	printf("\"0123456789\" strlen = %zu\n",ft_strlen("0123456789"));
	printf("\"0123456\", \"0123456\" strcmp = %d\n",ft_strcmp("0123456","0123456"));
	printf("\"0123456\", \"0123\" strcmp = %d\n",ft_strcmp("0123456", "0123"));
	printf("\"0123456\", \"0123456789\" strcmp = %d\n",ft_strcmp("0123456", "0123456789"));
	ft_strcpy(c,b);
	printf("strcpy = %s\n",c);	
	a = ft_strdup(d);
	printf("strdup = %s\n",a);
	free(a);
	ft_write(1,"ft_write_done\n",14);
	printf("ft_read start--------> type any word(less 10)\n");
	ft_read(0, f, 10);
	printf("%s",f);
}
