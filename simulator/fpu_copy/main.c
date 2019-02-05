#include<stdio.h>//printf
#include"fpu.h"
#define SIZE 100
int main(){
	float fa=-5.1,fb=10.0,fc,ft;
	unsigned int a,b,c,t;
	//printf("  10987654321098765432109876543210\n");
	a=*(unsigned int*)(&fa);
	b=*(unsigned int*)(&fb);
	c=fle(a,a);
	printf("%d\n",c);
	
	//print(c);
	
	printf("a=");
	//print(a);
	printf("%.6f\n",fa);
	printf("b=");
	//print(b);
	printf("%.6f\n",fb);
	printf("c=");
	//print(c);
	fc=*(float*)(&c);
	printf("%.6f\n",fc);


	return 0;
}
