#include <stdio.h>

enum Week
{
	Mon = 10, Tue, Wed = 30, Thu, Fri = 90, Sat, Sun
};

int main(int argc, char const *argv[])
{
	printf("%d, %d\n", Mon, Sun);
	return 0;
}