#include <stdio.h>

int func(int a)
{
	printf("hello, world: %d\n", a);

	return 400 + a;
}

int main(int argc, char const *argv[])
{
	int result = 400 + 100;
	printf("result: %d\n", result);

	result = 400 + 100;
	printf("result: %d\n", result);

	return 0;
}