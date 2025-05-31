#include <stdio.h>
#include <stdlib.h>

int	main(void)
{
	int *salut;
	
	salut = (int *)malloc(sizeof(int) * 1);

	*salut = 15;
	printf("value de salut : %d\n", *salut);
	printf("addr de salut : %p\n", salut);
	return (0);
}
