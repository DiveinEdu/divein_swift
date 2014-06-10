#include <stdio.h>

int main(int argc, char const *argv[])
{
	int a = 100;

	for (int i = 0; i < 100; ++i)
	{
		printf("for: %d\n", i);
	}

	do {
		printf("do-while: %d\n", a);
		a++;
	} while(a < 100);

	a = 100;
	while(a < 100) {
		printf("while: %d\n", a);
		a++;
	}

	return 0;
}