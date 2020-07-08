#include <stdio.h>

extern int ASM_test_entry();

int main(void)
{
	int a = 5;
	printf("a = %d\n", a);
	
	a = ASM_test_entry();
	printf("a = %d\n", a);
	
	return 0;
}
