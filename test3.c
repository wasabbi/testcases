#include <pthread.h>
#include <stdio.h>

int x = 0;

void *A()
{
	int i = 0;
	while(i < (1 << 26)){
		i ++;
	}
	printf("A: x is %d\n", x);
	x = 1;
	printf("A: x is %d\n", x);
	x = 2;
	printf("A: x is %d\n", x);
}

void *B()
{
	int i = 0;
	int b = 0;	
	for(;i < 3; i++){
		printf("B: b is %d\n", b);
		b = x;
		printf("B: b is %d\n", b);
	}
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
