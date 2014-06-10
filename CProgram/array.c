#include <stdio.h>

int main(int argc, char const *argv[])
{
	int array[4] = {1, 2, 3, 4};
	for (int i = 0; i < 4; ++i)
	{
		printf("%d: %d\n", i, array[i]);
	}
	
	return 0;
}