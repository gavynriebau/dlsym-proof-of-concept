
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
	printf("This print the current user id '%d'\n", getuid());
	printf("This won't print because the getuid call was overwritten '%d'\n", getuid());
	return 0;
}
