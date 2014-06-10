#include <stdio.h>

typedef enum
{
	Mon = 10,
	Tue,
	Wed,
	Thu,
	Fri,
	Sat,
	Sun
} Weekday;

int main(int argc, char const *argv[])
{
	Weekday day = Mon;
	switch (day) {
		case Mon:
			printf("苦逼的去上班！\n");
			// break;
	    case Sat:
	    	printf("高兴的出去玩! \n");
	    	break;
	    default:
	    	printf("打酱油！ \n");
	}

	printf("Success!\n");
	return 0;
}