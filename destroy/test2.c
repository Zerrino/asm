#include <stdio.h>


//

int	main(void)
{
	int	*test = (int *)0x55c7b17112a0;
	int	value;	

	
	printf("l'addr : %p\n", test);
	value = *test;
	//printf("la valeur : %d\n", value);
	return (0);
}
