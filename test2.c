#include <pthread.h>
#include <stdio.h>

int x = 0;

void *A()
{
	int i = 0;
	int a = 0;
	while(i < (1 << 26)){
		i ++;
	}
	x = 1;
	printf("A: a is %d\n", a);
	//B: x = 10;
	a = x;
	printf("A: a is %d\n", a);
	x = 2;
	printf("A: a is %d\n", a);
	//B: x = 20;
	a = x;
	printf("A: a is %d\n", a);
}

void *B()
{
	printf("B: x is %d\n", x);
	x = 10;
	printf("B: x is %d\n", x);
	x = 20;
	printf("B: x is %d\n", x);
}

int main()
{
	pthread_t A_thread, B_thread;
	if(pthread_create(&A_thread, NULL, A, NULL)) {
		fprintf(stderr, "Error creating thread\n");
		return 1;
	}
	if(pthread_create(&B_thread, NULL, B, NULL)) {
		fprintf(stderr, "Error creating thread\n");
		return 1;
	}
	if(pthread_join(A_thread, NULL)) {
		fprintf(stderr, "Error joining thread\n");
		return 2;
	}
	if(pthread_join(B_thread, NULL)) {
		fprintf(stderr, "Error joining thread\n");
		return 2;
	}
	printf("program exited\n");
	return 0;
}
